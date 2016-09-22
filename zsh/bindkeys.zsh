
# cat > /dev/null
# And press it

if [[ $IS_MAC -eq 1 ]]; then

bindkey "^K"      kill-whole-line                      # ctrl-k
bindkey "^R"      history-incremental-search-backward  # ctrl-r
bindkey "^A"      beginning-of-line                    # ctrl-a  
bindkey "^E"      end-of-line                          # ctrl-e
bindkey "[B"      history-search-forward               # down arrow
bindkey "[A"      history-search-backward              # up arrow
bindkey "^D"      delete-char                          # ctrl-d
bindkey "^F"      forward-char                         # ctrl-f
bindkey "^B"      backward-char                        # ctrl-b

if [[ $IS_MAC -eq 1 ]]; then
	# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
	bindkey '^?' backward-delete-char
	bindkey "^[[3~" delete-char
	bindkey "^[3;5~" delete-char
	bindkey "\e[3~" delete-char
	bindkey "^[[1~" beginning-of-line        # home on OS X (with custom terminal settings)
	bindkey "^[[4~" end-of-line                # end on OS X (with custom terminal settings)	
fi	
if [[ $IS_LINUX -eq 1 ]]; then
	bindkey "^[[1;5D" beginning-of-line         # ctrl+left on linux
	bindkey "^[OH" beginning-of-line         # home on linux
	bindkey "^[OF" end-of-line                # end on linux
	bindkey "^[[1;5C" end-of-line                # ctrl+right on linux
fi

#bindkey -v   # Default to standard vi bindings, regardless of editor string
bindkey "[C" forward-word
bindkey "[D" backward-word

fi
