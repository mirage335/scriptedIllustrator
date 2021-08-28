
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
	
	_e_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e_-html "$@"
	}
	export -f _e_
	
	_i() {
		export currentFunctionName="${FUNCNAME[0]}"
		_i-html "$@"
	}
	export -f _i
	
	_t() {
		export currentFunctionName="${FUNCNAME[0]}"
		_t-html "$@"
	}
	export -f _i
	
	_r() {
		export currentFunctionName="${FUNCNAME[0]}"
		_r-html "$@"
	}
	export -f _r
}


_set_strings_markup_html() {
	export comment_html_begin='<!--'
	export comment_html_end='-->'
	export comment_html_line=''
	
	# 'if false; then true; # scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	export interpret__html_NOT_shell__begin="$comment_shell_begin $comment_html_end"
	export interpret__html_NOT_shell__end="$comment_html_begin
$comment_shell_end"
	
	# https://mediatemple.net/blog/design-creative/considerations-for-styling-the-pre-tag/
	# https://stackoverflow.com/questions/7962844/html-how-to-remove-line-spacing-from-pre-tag/20566618
	#line-height:.1;
	#display: inline;
	#width: 100%;
	#font-family: monospace;
	#tab-width: 8;
	#margin-top: 0px;margin-bottom: 0px;
	#<code style="white-space: pre;">
	export markup_html_pre_begin="$workaround_shellPrependMarkupLines"'<pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre;">'
	export markup_html_pre_end="$workaround_shellPrependMarkupLines"'</pre>'
	
	export markup_html_cmd_begin="$workaround_shellPrependMarkupLines"'<pre style="background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre;">'
	export markup_html_cmd_end="$markup_html_pre_end"
	
	
	export markup_html_root_begin='<html><br \>'
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

_e_-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitiousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitiousBashIDnano:0:3}" | fold -w 156 -s | _shellCommentLines | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitiousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}

# Internal. Use for variables, equation solving, etc.
_i-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	#echo "$markup_html_cmd_begin"
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval "$@" > /dev/null 2>&1
	
	#echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}




# Show preformatted text.
_t-html() {
	_safeEcho_newline _t "'"
	echo -n "$flag__NOT_shell $comment_html_end""$markup_html_pre_begin"
	
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]]
		then
			_safeEcho_newline
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && _safeEcho_newline
	
	_safeEcho "$@" | _filter__scriptedIllustrator_markup
	
	
	echo "$markup_html_pre_end""$comment_html_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}


# Raw. Experimental. No production use.
_r-html() {
	_safeEcho_newline _r "'"
	echo -n "$flag__NOT_shell $comment_html_end"
	
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]]
		then
			_safeEcho_newline
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && _safeEcho_newline
	
	_safeEcho "$@" | _filter__scriptedIllustrator_markup
	
	
	echo "$comment_html_begin $flag__NOT_shell"
	_safeEcho_newline "'"
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
	
	
	declare -f _e
	declare -f _e-html
	
	declare -f _e_
	declare -f _e_-html
	
	declare -f _i
	declare -f _i-html
	
	declare -f _t
	declare -f _t-html
	
	declare -f _r
	declare -f _r-html
	
	
	declare -f _noShell_block-html
	declare -f _pre_block-html
}


