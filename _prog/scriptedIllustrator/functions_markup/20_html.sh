
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
	export comment_html_begin='<!--'
	export comment_html_end='-->'
	export comment_html_line=''
	
	# Roughly equivalent.
	# '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	# 'if false; then true; # scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	# '# scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	export interpret__html_NOT_shell__begin="$comment_shell_line $comment_html_begin $flag__NOT_shell
$comment_shell_begin $comment_shell_line $flag__NOT_shell
$comment_shell_line $flag__NOT_shell $comment_html_end"
	
	# Roughly equivalent.
	# '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	# 'fi # scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	# '# scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	export interpret__html_NOT_shell__end="$comment_shell_line $comment_html_begin $flag__NOT_shell
$comment_shell_end $comment_shell_line $flag__NOT_shell
$comment_shell_line $flag__NOT_shell $comment_html_end"
	
	
	
	export markup_html_pre_begin='<pre style="white-space: pre;">'
	export markup_html_pre_end='</pre>'
	
	#"$comment_shell_line $comment_html_begin $flag__NOT_shell $comment_html_end $markup_html_pre_begin"
	#"$comment_shell_line $markup_html_pre_end $comment_html_begin $flag__NOT_shell $comment_html_end"
}

_noShell_block_html() {
	echo -n "$interpret__html_NOT_shell__begin"
	echo
	
	cat
	
	echo -n "$interpret__html_NOT_shell__end"
	echo
}

_hideFrom_markup_html() {
	echo -n "$comment_shell_line $comment_html_begin $flag__NOT_shell"
	echo
	
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$currentString"
		echo
	done
	
	echo -n "$comment_shell_line $flag__NOT_shell $comment_html_end"
	echo
}

# WARNING: Obsolete. Any use of this should be replaced. No production use.
_break_markup_html() {
	# Some attributes may control text wrapping if under MediaWiki or similar.
	# https://www.mediawiki.org/wiki/Help:Formatting
	
	# '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q --> <pre style="white-space: pre;">'
	echo -n "$comment_shell_line $comment_html_begin $flag__NOT_shell $comment_html_end $markup_html_pre_begin"
	echo
	
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$currentString"
		echo
	done
	
	# '# </pre> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	echo -n "$comment_shell_line $markup_html_pre_end $comment_html_begin $flag__NOT_shell $comment_html_end"
	echo
}







































_tinyCompiler_scriptedIllustrator_declareFunctions_markup_html() {
	declare -f _set_markup_html
	
	declare -f _set_strings_markup_html
	
	declare -f _noShell_block_html
	declare -f _hideFrom_markup_html
	declare -f _break_markup_html
}
