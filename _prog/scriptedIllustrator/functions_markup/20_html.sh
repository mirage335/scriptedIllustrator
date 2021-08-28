
# TODO: Move from 'wip_functions.sh' .
#export current_scriptedIllustrator_markup='html'

# TODO: Postprocessing may not be able to achieve presentation quality.
#export current_scriptedIllustrator_presentation='true'


_set_markup_html() {
	export current_scriptedIllustrator_markup='html'
	
	_noShell_block() {
		_noShell_block-html "$@"
	}
	export -f _noShell_block
	_pre_block() {
		_pre_block-html "$@"
	}
	export -f _pre_block
	
	_e() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e-html "$@"
	}
	export -f _e
}


_set_strings_markup_html() {
	export comment_html_begin='<!--'
	export comment_html_end='-->'
	export comment_html_line=''
	
	# 'if false; then true; # scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	export interpret__html_NOT_shell__begin="$comment_shell_begin $comment_html_end"
	export interpret__html_NOT_shell__end="$comment_html_begin
$comment_shell_end"
	
	
	export markup_html_pre_begin="$workaround_shellPrependMarkupLines"'<pre style="white-space: pre;">'
	export markup_html_pre_end="$workaround_shellPrependMarkupLines"'</pre>'
	
	export markup_html_cmd_begin="$workaround_shellPrependMarkupLines"'<pre style="background-color:#848484;white-space: pre;">'
	export markup_html_cmd_end="$markup_html_pre_end"
	
	
	export markup_html_root_begin='<html>'
	export markup_html_root_end='</html>'
	
	
	export document_html_root_begin="$comment_shell_line $markup_html_root_begin $comment_html_begin $flag__NOT_shell"
	export document_html_root_end="$comment_shell_line $flag__NOT_shell $comment_html_end $markup_html_root_end"
	
}







# Echo command with commented (shell prepending '#' ) output.
_e-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_cmd_begin"
	_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	"$@" | fold -w 156 -s | _shellCommentLines | _workaround_shellPrependMarkupLines
	echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}
























# No production use.
_noShell_block-html() {
	echo -n "$interpret__html_NOT_shell__begin"
	echo
	
	cat
	
	echo -n "$interpret__html_NOT_shell__end"
	echo
}

# No production use.
_pre_block-html() {
	echo -n "$markup_html_pre_begin"
	echo
	
	cat
	
	echo -n "$markup_html_pre_end"
	echo
}





_tinyCompiler_scriptedIllustrator_declareFunctions_markup_html() {
	declare -f _set_markup_html
	
	declare -f _set_strings_markup_html
	
	
	
	declare -f _e-html
	
	
	
	declare -f _noShell_block-html
	declare -f _pre_block-html
}


