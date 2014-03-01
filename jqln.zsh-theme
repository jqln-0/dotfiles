# Slightly modified jreese:
#		- Removed git info
#		- Removed username
#		- Bolded hostname
#		- Made pwd blue
if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg_bold[$NCOLOR]%}%m%{$reset_color%} \
%{$fg[blue]%}%~%{$reset_color%} \
%{$fg_bold[red]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

