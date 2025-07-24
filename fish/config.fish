function fish_prompt
	set -l previous_status $status
	set -l prompt (prompt_login)
	set -l path (prompt_pwd)
	set -l tte_previous_command (set_color 0053ed) '[' (math $CMD_DURATION / 1000) '  ]'

	if test $path = '~'
		set path ''
	else
		set path ' ' (set_color 049dd3)(prompt_pwd)
	end

	if test $previous_status -ne 0
		set previous_status (set_color red)"<err $previous_status>"
	else
		set previous_status ''
	end

	string join '' -- $prompt $path ' ' $tte_previous_command ' ' $previous_status
	string join '' -- (set_color green) '󰘍 '
end
