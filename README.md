# Bash Customizations

A small, modular collection of Bash aliases, functions, and shell quality-of-life tweaks that I use interactively. The repo is designed to be **opt-out by file**: you can enable/disable functionality by commenting out a single entry point (`init.bash`).

## Contents

- `init.bash` – entry point; sources individual feature files
- `*.bash` files – independent modules (aliases, functions, prompt helpers, etc.)


---

## Requirements

- Assumed you are using GNU Bash with a `~/.bashrc` file. 
- Use of `git` over `ssh`

---

## Setup

### 1) Clone the repo

Choose an install location you control (examples below use `~/.config`):

```sh
mkdir -p "<parent-path-of-your-choice>"
cd "<parent-path-of-your-choice>"
git clone git@github.com:YoranMitz/my-bash-files.git 
```
### 2) Add to `.bashrc`
```
cd ./my-bash-files
cat >> "$HOME/.bashrc" <<'EOF'
# Below is a definition of the path to the directory of "my-bash-files"
__my_bash_files="${pwd()}/my-bash-files"
# Add the custom configs:
source "$__my_bash_files/init.bash"
EOF

```

## GPL License
`my-bash-files` is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
<br><br>
my-bash-files is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.
<br><br>
You should have received a copy of the GNU General Public License
along with `my-bash-files`. If not, see <https://www.gnu.org/licenses/>.

