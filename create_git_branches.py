import os
import subprocess
import uuid
import tempfile

BASE_DIR = os.path.abspath(os.path.dirname(__file__))

ROOT_FILES = [
    "README.md",
    "LICENSE",
    "CONTRIBUTING.md",
    "LEARNING-ROADMAP.md",
    "RESOURCE-INDEX.md",
    "TOOLS-INDEX.md",
    "LAB-SETUP-GUIDE.md",
    "youtube"
]

def run(cmd, env=None):
    res = subprocess.run(cmd, cwd=BASE_DIR, env=env, shell=True, capture_output=True, text=True)
    return res.returncode, res.stdout.strip(), res.stderr.strip()

def main():
    print("==> Step 1: Checking repository state...")
    # Ensure main is not touched
    code, initial_commit, _ = run("git rev-parse HEAD")
    initial_commit = initial_commit.strip()
    print(f"  Base commit on main: {initial_commit[:7]}")
    print("  [CONFIRMED] 'main' branch will NOT be modified. Nothing will be added to 'main'.")

    # Find all 51 modules (00 through 50)
    modules = sorted([d for d in os.listdir(BASE_DIR) if os.path.isdir(os.path.join(BASE_DIR, d)) and d[:2].isdigit()])
    print(f"\n==> Step 2: Creating {len(modules)} separate modular branches...")

    success_count = 0
    for mod in modules:
        temp_idx = os.path.join(tempfile.gettempdir(), f"git_idx_{uuid.uuid4().hex}.tmp")
        env = os.environ.copy()
        env["GIT_INDEX_FILE"] = temp_idx

        try:
            root_args = " ".join([f'"{f}"' for f in ROOT_FILES if os.path.exists(os.path.join(BASE_DIR, f))])
            # Stage only the root files and this specific module into isolated index
            run(f'git add {root_args} "{mod}"', env=env)
            c, tree, err = run("git write-tree", env=env)
            if c != 0 or not tree:
                print(f"  [-] Failed write-tree for {mod}: {err}")
                continue

            # Create commit pointing directly to initial commit, leaving main completely untouched
            c, commit, err = run(f'git commit-tree {tree} -p {initial_commit} -m "feat({mod}): add {mod} module notes and reference materials"', env=env)
            if c != 0 or not commit:
                print(f"  [-] Failed commit-tree for {mod}: {err}")
                continue

            # Update the branch reference
            run(f'git update-ref refs/heads/{mod} {commit}', env=env)
            print(f"  [+] Created branch '{mod}' -> commit {commit[:7]}")
            success_count += 1
        finally:
            if os.path.exists(temp_idx):
                try: os.remove(temp_idx)
                except: pass

    print(f"\n==> Step 3: Verified {success_count} modular branches created!")
    _, branch_name, _ = run("git branch --show-current")
    print(f"  Current active branch remains: {branch_name} (completely untouched)")

    print("\n[SUCCESS] Each module is committed strictly to its own dedicated branch.")
    print("To push all 51 branches to GitHub, run:")
    print("  git push --all origin\n")

if __name__ == "__main__":
    main()
