# This file is part of my-bash-files.
#
# my-bash-files is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# my-bash-files is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with my-bash-files. If not, see <https://www.gnu.org/licenses/>.


# Avoid double-applying if sourced more than once
if [[ -n "${__BASH_CUSTOM_ALIASES_LOADED:-}" ]]; then
  return 0
fi
__BASH_CUSTOM_ALIASES_LOADED=1

alias top="btop --utf-force" 

