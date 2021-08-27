
# TODO: Move from 'wip_functions.sh' .
# TODO: Shell code as markup. When used by other markup, this is to prevent shell interpretation of markup. When creating a new file, only 'scribble' the shell code - resulting in a 'simplified', 'editable' shell script.
# To 'scribble' just the shell code, just use the grep 'filter'.


_set_strings_markup_shell() {
	export comment_shell_begin='if false; then true;'
	export comment_shell_end='fi'
	export comment_shell_line='#'
	
	export flag__NOT_shell='scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
}

_filter__scriptedIllustrator_markup() {
	grep -v "$flag__NOT_shell"
}







_shellCommentLines() {
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$comment_shell_line $currentString"
		echo
	done
	
}





_tinyCompiler_scriptedIllustrator_declareFunctions_markup_shell() {
	declare -f _set_strings_markup_shell
	
	declare -f _filter__scriptedIllustrator_markup
	
	declare -f _shellCommentLines
}

