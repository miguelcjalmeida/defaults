source "$(dirname "${BASH_SOURCE[0]}")/source.sh"
source "$(dirname "${BASH_SOURCE[0]}")/env.sh"
source "$(dirname "${BASH_SOURCE[0]}")/secrets.sh"
source "$(dirname "${BASH_SOURCE[0]}")/install.sh"

source-preference "git.sh"
source-preference "shell.sh"
source-preference "jrnl/jrnl.sh"
source-preference "shortcuts/init.sh"

