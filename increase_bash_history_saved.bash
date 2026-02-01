

# Avoid double-applying if sourced more than once
if [[ -n "${__BASH_HISTORY_TUNING_LOADED:-}" ]]; then
  return 0
fi
__BASH_HISTORY_TUNING_LOADED=1

# Keep in-memory history modest
HISTSIZE=1000

# Keep a LOT on disk (3 months intense; adjust if needed)
HISTFILESIZE=500000

# Show timestamps when you run `history`
export HISTTIMEFORMAT='%F %T  '

# Ubuntu default: ignore duplicates + commands starting with space
HISTCONTROL=ignoreboth
shopt -s histappend

# Write history to disk after each command (durable across crashes)
# Add only once; preserve any existing PROMPT_COMMAND.
case ";${PROMPT_COMMAND:-};" in
  *";history -a;"*) : ;;  # already present
  *)
    PROMPT_COMMAND="history -a; ${PROMPT_COMMAND:-}"
    ;;
esac

