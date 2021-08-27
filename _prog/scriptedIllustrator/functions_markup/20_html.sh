
# TODO: Move from 'wip_functions.sh' .
export current_scriptedIllustrator_markup='html'
unset current_scriptedIllustrator_markup

# TODO: Postprocessing may not be able to achieve presentation quality.
export current_scriptedIllustrator_presentation='true'
unset current_scriptedIllustrator_presentation


_set_markup_html() {
	export current_scriptedIllustrator_markup='html'
	
	_noShell_block() {
		_noShell_block_html "$@"
	}
	export -f _noShell_block
}


_set_strings_markup_html() {
	export markup_comment_html_begin='<!--'
	export markup_comment_html_end='-->'
	export markup_comment_html_line=''
	
	# Roughly equivalent.
	# '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	# 'if false; then true; # scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	# '# scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	export markup_interpret__html_NOT_shell__begin="$markup_comment_shell_line $markup_comment_html_begin $markup_flag__NOT_shell
$markup_comment_shell_begin $markup_comment_shell_line $markup_flag__NOT_shell
$markup_comment_shell_line $markup_flag__NOT_shell $markup_comment_html_end"
	
	# Roughly equivalent.
	# '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	# 'fi # scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	# '# scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	export markup_interpret__html_NOT_shell__end="$markup_comment_shell_line $markup_comment_html_begin $markup_flag__NOT_shell
$markup_comment_shell_end $markup_comment_shell_line $markup_flag__NOT_shell
$markup_comment_shell_line $markup_flag__NOT_shell $markup_comment_html_end"
}







_noShell_block_html() {
	echo -n "$markup_interpret__html_NOT_shell__begin"
	echo
	
	cat
	
	echo -n "$markup_interpret__html_NOT_shell__end"
	echo
}




_tinyCompiler_scriptedIllustrator_declareFunctions_markup_html() {
	declare -f _set_markup_html
	
	declare -f _set_strings_markup_html
	
	declare -f _noShell_block_html
}
