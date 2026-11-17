param(
    [string]$GitHubToken = ""
)

# ==============================================================================
# Script: fix_and_create_prs.ps1
# Description: Reconstructs all 52 clean modular branches (each containing ONLY
#              its own module folder), leaves 'main' untouched, force pushes to
#              GitHub, and creates 52 Pull Requests.
# ==============================================================================

$REPO_NAME = "maheswari-pinneti/Cyber-ethical-hacking-red-team-notes"
$INITIAL_COMMIT = "f535383f72fd405fb9a2c0ce793c44586a299488"
$SOURCE_COMMIT = "09585d38c281478a853727b8a9ecd5a2b1647362"

Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host "  Fixing Git Branches & Setting Up 52 Pull Requests" -ForegroundColor Cyan
Write-Host "======================================================================`n" -ForegroundColor Cyan

# 1. Read all entries from the source commit
$allEntries = git ls-tree $SOURCE_COMMIT
$rootEntries = @()
$moduleEntries = @{}
$youtubeEntry = $null

foreach ($line in $allEntries) {
    $parts = $line -split "`t"
    if ($parts.Length -eq 2) {
        $entryName = $parts[1]
        if ($entryName -in @("README.md", "LICENSE", "CONTRIBUTING.md", "LEARNING-ROADMAP.md", "RESOURCE-INDEX.md", "TOOLS-INDEX.md", "LAB-SETUP-GUIDE.md")) {
            $rootEntries += $line
        } elseif ($entryName -eq "youtube") {
            $youtubeEntry = $line
        } elseif ($entryName -match '^\d\d-') {
            $moduleEntries[$entryName] = $line
        }
    }
}

if (Test-Path -Path "SECURITY.md") {
    $secSha = (git hash-object -w "SECURITY.md").Trim()
    if ($secSha) {
        $rootEntries += "100644 blob $secSha`tSECURITY.md"
    }
}

$sortedModules = $moduleEntries.Keys | Sort-Object
Write-Host "[+] Found $($sortedModules.Count) module directories (00 through 50)" -ForegroundColor Green

# 2. Rebuild 51 module branches
$allBranches = @()
Write-Host "`n==> Step 1: Rebuilding 51 modular branches (isolated content per branch)..." -ForegroundColor Cyan

foreach ($mod in $sortedModules) {
    $modLine = $moduleEntries[$mod]
    $treeInput = ($rootEntries + @($modLine)) -join "`n"
    $treeSha = ($treeInput | git mktree).Trim()

    if ($treeSha) {
        $commitMsg = "feat($mod): add $mod learning notes and practical resources"
        $commitSha = (git commit-tree $treeSha -p $INITIAL_COMMIT -m $commitMsg).Trim()
        if ($commitSha) {
            git update-ref "refs/heads/$mod" $commitSha
            $shortSha = $commitSha.Substring(0, 7)
            Write-Host "  [+] $mod -> commit $shortSha" -ForegroundColor Green
            $allBranches += $mod
        }
    }
}

# 3. Rebuild 52nd branch: '51-YOUTUBE-AND-RESOURCE-GUIDES'
if ($youtubeEntry) {
    $ytBranch = "51-YOUTUBE-AND-RESOURCE-GUIDES"
    $treeInput = ($rootEntries + @($youtubeEntry)) -join "`n"
    $treeSha = ($treeInput | git mktree).Trim()
    if ($treeSha) {
        $commitMsg = "feat(youtube): add curated video tutorials, channels, and resource guides"
        $commitSha = (git commit-tree $treeSha -p $INITIAL_COMMIT -m $commitMsg).Trim()
        if ($commitSha) {
            git update-ref "refs/heads/$ytBranch" $commitSha
            $shortSha = $commitSha.Substring(0, 7)
            Write-Host "  [+] $ytBranch -> commit $shortSha" -ForegroundColor Green
            $allBranches += $ytBranch
        }
    }
}

Write-Host "`n[SUCCESS] Successfully constructed $($allBranches.Count) clean modular branches locally!" -ForegroundColor Green
Write-Host "[CONFIRMATION] 'main' branch remains completely untouched at initial commit." -ForegroundColor Yellow

# 4. Push all branches to GitHub
Write-Host "`n==> Step 2: Force-pushing all 52 branches to GitHub (origin)..." -ForegroundColor Cyan
git push --force origin $allBranches

# 5. Check for GitHub token to auto-create PRs via REST API
$token = $GitHubToken
if (-not $token) {
    $token = $env:GITHUB_TOKEN
}

if ($token) {
    Write-Host "`n==> Step 3: Creating 52 Pull Requests via GitHub API..." -ForegroundColor Cyan
    $createdCount = 0
    foreach ($bname in $allBranches) {
        $headers = @{
            "Authorization" = "Bearer $token"
            "Accept" = "application/vnd.github+json"
            "Content-Type" = "application/json"
            "User-Agent" = "Security-Notes-PR-Bot"
        }
        $body = @{
            title = "feat: add $bname notes and resources"
            head = $bname
            base = "main"
            body = "### Pull Request: $bname`n`nThis PR introduces the learning notes and practical guides for `$bname`.`n`n- **Target Base:** `main``n- **Source Branch:** `$bname`"
        } | ConvertTo-Json

        try {
            $resp = Invoke-RestMethod -Uri "https://api.github.com/repos/$REPO_NAME/pulls" -Method Post -Headers $headers -Body $body
            Write-Host "  [+] PR #$($resp.number) created: $($resp.html_url)" -ForegroundColor Green
            $createdCount++
        } catch {
            Write-Warning "  [-] $bname : $($_.Exception.Message)"
        }
    }
    Write-Host "`n[DONE] Successfully created $createdCount Pull Requests on GitHub!" -ForegroundColor Green
} else {
    Write-Host "`n[INFO] Open PULL_REQUESTS.md to click and submit each PR directly in your browser." -ForegroundColor Cyan
    Write-Host "Or re-run with token: .\fix_and_create_prs.ps1 -GitHubToken 'your_token_here'" -ForegroundColor Yellow
}
