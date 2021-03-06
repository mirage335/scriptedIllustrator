
# ATTENTION: set/get global variables if appropriate
#export current_scriptedIllustrator_markup='html'
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
	
	_o() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o-html "$@"
	}
	export -f _o
	
	_o_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o_-html "$@"
	}
	export -f _o_
	
	_i() {
		export currentFunctionName="${FUNCNAME[0]}"
		_i-html "$@"
	}
	export -f _i
	
	_v() {
		export currentFunctionName="${FUNCNAME[0]}"
		_v-html "$@"
	}
	export -f _v
	
	_t() {
		export currentFunctionName="${FUNCNAME[0]}"
		_t-html "$@"
	}
	export -f _t
	
	_r() {
		export currentFunctionName="${FUNCNAME[0]}"
		_r-html "$@"
	}
	export -f _r
	
	_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-html "$@"
	}
	_h() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-html "$@"
	}
	export -f _
	export -f _h
	
	
	
	_heading1() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading1-html "$@"
	}
	export -f _heading1
	_heading2() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading2-html "$@"
	}
	export -f _heading2
	_heading3() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading3-html "$@"
	}
	export -f _heading3
	_heading4() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading4-html "$@"
	}
	export -f _heading4
	_heading5() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading5-html "$@"
	}
	export -f _heading5
	_heading6() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading6-html "$@"
	}
	export -f _heading6
	
	_page() {
		export currentFunctionName="${FUNCNAME[0]}"
		_page-html "$@"
	}
	export -f _page
	
	_paragraph_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_begin-html "$@"
	}
	export -f _paragraph_begin
	_paragraph_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_end-html "$@"
	}
	export -f _paragraph_end
	
	
	_picture() {
		export currentFunctionName="${FUNCNAME[0]}"
		_picture-html "$@"
	}
	export -f _picture
	_image() {
		export currentFunctionName="${FUNCNAME[0]}"
		_image-html "$@"
	}
	export -f _image
	
	
	_cells_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_begin-html "$@"
	}
	export -f _cells_begin
	_cells_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_end-html "$@"
	}
	export -f _cells_end
	_cells_row_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_begin-html "$@"
	}
	export -f _cells_row_begin
	_cells_row_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_end-html "$@"
	}
	export -f _cells_row_end
	_cells_speck_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_begin-html "$@"
	}
	export -f _cells_speck_begin
	_cells_speck_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_end-html "$@"
	}
	export -f _cells_speck_end
	
	
	
	_markup_asciidoc_disable_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_begin-html "$@"
	}
	export -f _markup_asciidoc_disable_begin
	
	_markup_asciidoc_disable_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_end-html "$@"
	}
	export -f _markup_asciidoc_disable_end
}


_set_strings_markup_html() {
	# WARNING: Inaccurate. Will 'fold' any markup (such as from _messagePlain_probe and similar) as well as visible text.
	export markup_html_fold="$current_markup_html_fold"
	if [[ "$markup_html_fold" == "" ]]
	then
		true
		#export markup_html_fold=156
		#export markup_html_fold=93
		#export markup_html_fold=76
	fi
	
	
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
	#white-space: pre-wrap;
	export markup_html_pre_begin="$workaround_shellPrependMarkupLines"'<pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	export markup_html_pre_end="$workaround_shellPrependMarkupLines"'</pre>'
	
	export markup_html_cmd_begin="$workaround_shellPrependMarkupLines"'<pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	export markup_html_cmd_end="$markup_html_pre_end"
	
	# WARNING: Pure HTML (no JS) may be strongly preferable (ie. to 'scribble' presentation PDF from the HTML through automation). JS is not necessary to achieve presentation mode - disable if necessary.
	# https://stackoverflow.com/questions/1829370/clear-html-page-using-javascript/1829455
	# <script type="text/javascript"> document.body.innerHTML = ''; </script>
	#export markup_html_root_begin='<html style="size: letter;"><br \><script type="text/javascript"> document.body.innerHTML = '"''"'; </script>'
	export markup_html_root_begin='<html style="size: letter;">'
	[[ "$current_scriptedIllustrator_presentation" == 'true' ]] &&  export markup_html_root_begin='<html style="size: letter;"><br \><script type="text/javascript"> document.body.innerHTML = '"''"'; </script>'
	export markup_html_root_end='</html>'
	
	
	export document_html_root_begin="$comment_shell_line $markup_html_root_begin $comment_html_begin $flag__NOT_shell"
	export document_html_root_end="$comment_shell_line $flag__NOT_shell $comment_html_end $markup_html_root_end"
	
	# WARNING: Omitting comment character prevents interpretation as shell script, although it will otherwise be visible without javascript.
	#[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && export document_html_root_begin="$markup_html_root_begin $comment_html_begin $flag__NOT_shell"
	
	
	# ATTENTION: Override.
	_tryExecFull _set_strings_markup_html_prog "$@"
}

_set_strings_markup_workaround_html_prog() {
	export workaround_noInterpret_begin=''
	export workaround_noInterpret_end=''
	
	export workaround_comment_shell_line=''
}








# Echo command with commented (shell prepending '#' ) output.
_e-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_cmd_begin"
	
	_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	"$@" | _shellCommentLines | _workaround_shellPrependMarkupLines
	
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
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _shellCommentLines | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _shellCommentLines
	
	"$@" | _workaround_preformattedCharacters-html | _workaround_shellPrependMarkupLines
	
	echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o_-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _shellCommentLines
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_preformattedCharacters-html | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
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

# Useful to read out a variable (ie. set from 'COLLECT') as preformatted text.
# Variable. Roughly equivalent to '_messagePlain_probe_var' , however, without any declaration of the variable name .
# https://stackoverflow.com/questions/11386586/how-to-show-div-tag-literally-in-code-pre-tag
# 	'You can't (in modern HTML) write markup and have it be interpreted as text.'
_v-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_pre_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval echo -e \$"$1" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _fold-html | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_html_pre_end"
	echo "$interpret__html_NOT_shell__end"
}





# Show preformatted text.
_t-html() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _t "'"
	echo -n "$flag__NOT_shell $comment_html_end""$markup_html_pre_begin"
	
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]] && [[ "$currentLine" != "" ]]
		then
			_safeEcho_newline
			true
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && [[ "$currentLine_previous" != "" ]] && _safeEcho_newline
	
	#sed 's/^mediawiki_noLineBreak --><pre.*>//'
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak --><nowiki>//' | sed 's/^mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">//' | _filter__scriptedIllustrator_markup | _fold-html | _workaround_preformattedCharacters-html
	
	echo "$markup_html_pre_end""$comment_html_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}


# Raw. Experimental. No production use.
_r-html() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
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
	
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak -->//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-html
	
	
	echo "$comment_html_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}

# Hidden. Use for comments and (shell code only) spacing.
_h-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}







_heading1-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h1>'"$@"'</h1>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading2-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h2>'"$@"'</h2>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading3-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h3>'"$@"'</h3>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading4-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h4>'"$@"'</h4>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading5-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h5>'"$@"'</h5>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading6-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h6>'"$@"'</h6>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}

# Page break.
#title page (experiment)
#<div style="page-break-before: always;"> </div>
#<p>
#text page (experiment)
#</p>
_page-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<div style="page-break-before: always;margin: 0;padding: 0; border-width: 0px;"> </div>' | _workaround_shellPrependMarkupLines
	
	#_safeEcho_newline '<p style="page-break-after: always;">&nbsp;</p>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '<p style="page-break-before: always;">&nbsp;</p>' | _workaround_shellPrependMarkupLines
	
	#_safeEcho_newline '<p style="page-break-after: always;">&nbsp;</p><p style="page-break-before: always;">&nbsp;</p>' | _workaround_shellPrependMarkupLines
	
	#_safeEcho_newline '<div style="page-break-after: always;"> </div>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '<div></div>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}

_paragraph_begin-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<p>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '<p style="margin: 0;padding: 0; border-width: 0px;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_paragraph_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '</p>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}

_picture-html() {
	local currentWidth
	currentWidth=""
	[[ "$2" != "" ]] && currentWidth="$2"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	#./
	#https://www.hostpapa.com/knowledgebase/align-float-images-website/
	_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="float: right;margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_image-html() {
	local currentWidth
	currentWidth="96%"
	[[ "$2" != "" ]] && currentWidth="$2"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	#./
	_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}



_cells_begin-html() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<table '"$currentWidthParameter"'style="empty-cells: show; border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '</table>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_row_begin-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<tr>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_row_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '</tr>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_speck_begin-html() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	
	local currentColspan
	currentColspan="1"
	[[ "$2" != "" ]] && currentColspan="$2"
	
	local currentColspanParameter
	currentColspanParameter=""
	[[ "$currentColspan" != "" ]] && currentColspanParameter='colspan="'"$currentColspan"'" '
	
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<td '"$currentWidthParameter"''"$currentColspanParameter"'style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_speck_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '</td>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}






_markup_asciidoc_disable_begin-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}

_markup_asciidoc_disable_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
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



_fold-html() {
	if [[ "$markup_html_fold" != "" ]]
	then
		fold -w "$markup_html_fold" -s
		return
	fi
	cat
}



_workaround_preformattedCharacters-html() {
	#sed 's/\&#35;/#/g'
	#sed 's/\&#35;/#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g"
	
	#sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g"
	#sed "s/\\\x3c/\&lt;;/g" | sed "s/\\\060/\&lt;;/g" | sed "s/%3c/\&lt;;/g" | sed "s/\&lt;;/\&lt;;/g"
	
	sed 's/\&#35;/#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g" | sed "s/\\\x3c/\&lt;;/g" | sed "s/\\\060/\&lt;;/g" | sed "s/%3c/\&lt;;/g" | sed "s/\&lt;;/\&lt;;/g"
	
	
	#| sed "s/\&#92;/\\\/"
}



_tinyCompiler_scriptedIllustrator_declareFunctions_markup_html() {
	declare -f _set_markup_html
	
	declare -f _set_strings_markup_html
	
	declare -f _set_strings_markup_workaround_html_prog
	
	
	#declare -f _e
	declare -f _e-html
	
	#declare -f _e_
	declare -f _e_-html
	
	#declare -f _o
	declare -f _o-html
	
	#declare -f _o_
	declare -f _o_-html
	
	#declare -f _i
	declare -f _i-html
	
	#declare -f _v
	declare -f _v-html
	
	#declare -f _t
	declare -f _t-html
	
	#declare -f _r
	declare -f _r-html
	
	#declare -f _
	#declare -f _h
	declare -f _h-html
	
	
	
	
	
	
	#declare -f _heading1
	declare -f _heading1-html
	#declare -f _heading2
	declare -f _heading2-html
	#declare -f _heading3
	declare -f _heading3-html
	#declare -f _heading4
	declare -f _heading4-html
	#declare -f _heading5
	declare -f _heading5-html
	#declare -f _heading6
	declare -f _heading6-html
	
	#declare -f _page
	declare -f _page-html
	
	#declare -f _paragraph_begin
	declare -f _paragraph_begin-html
	#declare -f _paragraph_end
	declare -f _paragraph_end-html
	
	#declare -f _picture
	declare -f _picture-html
	#declare -f _image
	declare -f _image-html
	
	#declare -f _cells_begin
	declare -f _cells_begin-html
	#declare -f _cells_end
	declare -f _cells_end-html
	#declare -f _cells_row_begin
	declare -f _cells_row_begin-html
	#declare -f _cells_row_end
	declare -f _cells_row_end-html
	#declare -f _cells_speck_begin
	declare -f _cells_speck_begin-html
	#declare -f _cells_speck_end
	declare -f _cells_speck_end-html
	
	
	#declare -f _markup_asciidoc_disable_begin
	declare -f _markup_asciidoc_disable_begin-html
	#declare -f _markup_asciidoc_disable_end
	declare -f _markup_asciidoc_disable_end-html
	
	
	declare -f _noShell_block-html
	declare -f _pre_block-html
	
	declare -f _fold-html
	
	
	declare -f _workaround_preformattedCharacters-html
}


