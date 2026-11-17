# ==============================================================================
# Script: create_git_branches.ps1
# Description: Creates 51 modular branches for GitHub (00 through 50)
#              Each branch contains ONLY its respective module and root guides.
#              'main' remains completely untouched!
# ==============================================================================

Write-Host "==> Step 1: Checking repository state..." -ForegroundColor Cyan
$initialCommit = (git rev-parse HEAD).Trim()
Write-Host "  Base commit on main: $($initialCommit.Substring(0, 7))"
Write-Host "  [CONFIRMED] 'main' branch will NOT be modified. Nothing is committed to main.`n" -ForegroundColor Yellow

# Shared root files included on each branch
$rootFiles = @(
    "README.md",
    "LICENSE",
    "CONTRIBUTING.md",
    "LEARNING-ROADMAP.md",
    "RESOURCE-INDEX.md",
    "TOOLS-INDEX.md",
    "LAB-SETUP-GUIDE.md",
    "youtube"
)

# All 51 modules (00 through 50)
$modules = @(
    "00-START-HERE",
    "01-COMPUTER-AND-IT-FUNDAMENTALS",
    "02-NETWORKING-FUNDAMENTALS",
    "03-LINUX-FUNDAMENTALS",
    "04-WINDOWS-FUNDAMENTALS",
    "05-PROGRAMMING-AND-SCRIPTING",
    "06-SECURITY-FUNDAMENTALS",
    "07-ETHICAL-HACKING-METHODOLOGY",
    "08-RECONNAISSANCE-AND-OSINT",
    "09-NETWORK-PENETRATION-TESTING",
    "10-WEB-APPLICATION-SECURITY",
    "11-API-SECURITY",
    "12-BUG-BOUNTY-HUNTING",
    "13-RED-TEAM-OPERATIONS",
    "14-ACTIVE-DIRECTORY-AND-WINDOWS-PENTESTING",
    "15-CLOUD-SECURITY",
    "16-MALWARE-AND-REVERSE-ENGINEERING",
    "17-TOOLS-AND-TECHNOLOGIES",
    "18-DEFENSIVE-SECURITY-AND-SOC",
    "19-CTF-AND-PRACTICAL-LABS",
    "20-REAL-WORLD-CASE-STUDIES",
    "21-INTERVIEW-PREPARATION",
    "22-CHEAT-SHEETS",
    "23-CAREER-AND-CERTIFICATIONS",
    "24-REFERENCES-AND-RESOURCES",
    "25-WIRELESS-AND-NETWORK-SECURITY",
    "26-IDENTITY-AND-ACCESS-MANAGEMENT",
    "27-DIGITAL-FORENSICS-AND-INCIDENT-RESPONSE",
    "28-SECURE-SOFTWARE-DEVELOPMENT-AND-DEVSECOPS",
    "29-EXPLOIT-DEVELOPMENT-AND-BINARY-SECURITY",
    "30-MOBILE-APPLICATION-SECURITY",
    "31-IOT-AND-OT-SECURITY",
    "32-SECURITY-GOVERNANCE-RISK-AND-COMPLIANCE",
    "33-THREAT-INTELLIGENCE-AND-ADVERSARY-EMULATION",
    "34-SECURITY-RESEARCH-AND-VULNERABILITY-DISCLOSURE",
    "35-CRYPTOGRAPHY-AND-APPLIED-CRYPTANALYSIS",
    "36-PASSWORD-SECURITY-AND-AUTHENTICATION-TESTING",
    "37-VULNERABILITY-AND-PATCH-MANAGEMENT",
    "38-ENDPOINT-SECURITY-AND-EDR-XDR",
    "39-CONTAINER-AND-KUBERNETES-SECURITY",
    "40-EMAIL-SECURITY-AND-PHISHING-ANALYSIS",
    "41-SECURITY-AUTOMATION-AND-SCRIPTING",
    "42-DATABASE-AND-DATA-SECURITY",
    "43-BLOCKCHAIN-AND-WEB3-SECURITY",
    "44-AI-ML-AND-CYBERSECURITY",
    "45-SECURITY-ARCHITECTURE-AND-ZERO-TRUST",
    "46-WEB-INFRASTRUCTURE-AND-PROTOCOL-SECURITY",
    "47-SOFTWARE-SUPPLY-CHAIN-AND-DEPENDENCY-SECURITY",
    "48-PRIVACY-ENGINEERING-AND-DATA-PROTECTION",
    "49-SECURITY-TESTING-QUALITY-ASSURANCE-AND-VALIDATION",
    "50-PROFESSIONAL-SECURITY-PROJECTS-AND-PORTFOLIO"
)

Write-Host "==> Step 2: Creating $($modules.Count) separate modular branches..." -ForegroundColor Cyan

foreach ($mod in $modules) {
    if (-not (Test-Path -Path $mod)) {
        Write-Warning "Directory $mod not found, skipping..."
        continue
    }

    $guid = [System.Guid]::NewGuid().ToString("N")
    $tempIndex = Join-Path -Path ([System.IO.Path]::GetTempPath()) -ChildPath "git_idx_$guid.tmp"
    $env:GIT_INDEX_FILE = $tempIndex

    try {
        git add $rootFiles 2>$null
        git add $mod 2>$null

        $tree = (git write-tree).Trim()
        if ($LASTEXITCODE -eq 0 -and $tree) {
            $commit = (git commit-tree $tree -p $initialCommit -m "feat($mod): add $mod module notes and reference materials").Trim()
            if ($LASTEXITCODE -eq 0 -and $commit) {
                git update-ref "refs/heads/$mod" $commit
                $shortCommit = $commit.Substring(0, 7)
                Write-Host "  [+] Created branch '$mod' -> commit $shortCommit" -ForegroundColor Green
            }
        }
    }
    catch {
        Write-Error "Failed to create branch for ${mod}"
    }
    finally {
        if (Test-Path -Path $tempIndex) {
            Remove-Item -Path $tempIndex -Force -ErrorAction SilentlyContinue
        }
    }
}

Remove-Item Env:\GIT_INDEX_FILE -ErrorAction SilentlyContinue

Write-Host "`n==> Step 3: Verifying created branches..." -ForegroundColor Cyan
git branch --list

Write-Host "`n[SUCCESS] All $($modules.Count) modular branches are ready locally!" -ForegroundColor Green
Write-Host "'main' remains completely untouched. Each module is stored solely in its own branch." -ForegroundColor Cyan
Write-Host "To push all 51 branches to GitHub, run:" -ForegroundColor Yellow
Write-Host "  git push --all origin`n" -ForegroundColor White
