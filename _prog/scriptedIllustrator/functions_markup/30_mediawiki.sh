
# TODO: Expect strong resemblence to 'html' .
# https://www.mediawiki.org/wiki/Help:Formatting

# ATTENTION: set/get global variables if appropriate
#export current_scriptedIllustrator_markup='mediawiki'



_set_markup_mediawiki() {
	export current_scriptedIllustrator_markup='mediawiki'
	
	_noShell_block() {
		_noShell_block-mediawiki "$@"
	}
	export -f _noShell_block
	_pre_block() {
		_pre_block-mediawiki "$@"
	}
	export -f _pre_block
	
	_e() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e-mediawiki "$@"
	}
	export -f _e
	
	_e_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e_-mediawiki "$@"
	}
	export -f _e_
	
	_o() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o-mediawiki "$@"
	}
	export -f _o
	
	_i() {
		export currentFunctionName="${FUNCNAME[0]}"
		_i-mediawiki "$@"
	}
	export -f _i
	
	_v() {
		export currentFunctionName="${FUNCNAME[0]}"
		_v-mediawiki "$@"
	}
	export -f _v
	
	_t() {
		export currentFunctionName="${FUNCNAME[0]}"
		_t-mediawiki "$@"
	}
	export -f _t
	
	_r() {
		export currentFunctionName="${FUNCNAME[0]}"
		_r-mediawiki "$@"
	}
	export -f _r
	
	_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-mediawiki "$@"
	}
	_h() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-mediawiki "$@"
	}
	export -f _
	export -f _h
	
	
	
	_heading1() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading1-mediawiki "$@"
	}
	export -f _heading1
	_heading2() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading2-mediawiki "$@"
	}
	export -f _heading2
	_heading3() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading3-mediawiki "$@"
	}
	export -f _heading3
	_heading4() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading4-mediawiki "$@"
	}
	export -f _heading4
	_heading5() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading5-mediawiki "$@"
	}
	export -f _heading5
	_heading6() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading6-mediawiki "$@"
	}
	export -f _heading6
	
	_page() {
		export currentFunctionName="${FUNCNAME[0]}"
		_page-mediawiki "$@"
	}
	export -f _page
	
	_paragraph_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_begin-mediawiki "$@"
	}
	export -f _paragraph_begin
	_paragraph_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_end-mediawiki "$@"
	}
	export -f _paragraph_end
	
	
	_picture() {
		export currentFunctionName="${FUNCNAME[0]}"
		_picture-mediawiki "$@"
	}
	export -f _picture
	_image() {
		export currentFunctionName="${FUNCNAME[0]}"
		_image-mediawiki "$@"
	}
	export -f _image
	
	
	_cells_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_begin-mediawiki "$@"
	}
	export -f _cells_begin
	_cells_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_end-mediawiki "$@"
	}
	export -f _cells_end
	_cells_row_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_begin-mediawiki "$@"
	}
	export -f _cells_row_begin
	_cells_row_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_end-mediawiki "$@"
	}
	export -f _cells_row_end
	_cells_speck_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_begin-mediawiki "$@"
	}
	export -f _cells_speck_begin
	_cells_speck_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_end-mediawiki "$@"
	}
	export -f _cells_speck_end
}


_set_strings_markup_mediawiki() {
	# WARNING: Inaccurate. Will 'fold' any markup (such as from _messagePlain_probe and similar) as well as visible text.
	#export markup_mediawiki_fold=156
	#export markup_mediawiki_fold=93
	#export markup_mediawiki_fold=76
	
	
	export comment_mediawiki_begin='<!--'
	export comment_mediawiki_end='-->'
	export comment_mediawiki_line=''
	
	# 'if false; then true; # scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	export interpret__mediawiki_NOT_shell__begin="$comment_shell_begin $comment_mediawiki_end"
	export interpret__mediawiki_NOT_shell__end="$comment_mediawiki_begin
$comment_shell_end"
	
	# https://mediatemple.net/blog/design-creative/considerations-for-styling-the-pre-tag/
	# https://stackoverflow.com/questions/7962844/mediawiki-how-to-remove-line-spacing-from-pre-tag/20566618
	#line-height:.1;
	#display: inline;
	#width: 100%;
	#font-family: monospace;
	#tab-width: 8;
	#margin-top: 0px;margin-bottom: 0px;
	#<code style="white-space: pre;">
	#white-space: pre-wrap;
	export markup_mediawiki_pre_begin="$workaround_shellPrependMarkupLines"'<p style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	#export markup_mediawiki_pre_begin="$workaround_shellPrependMarkupLines"'<p style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	export markup_mediawiki_pre_end="$workaround_shellPrependMarkupLines"'</p>'
	
	export markup_mediawiki_cmd_begin="$workaround_shellPrependMarkupLines"'<p style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	export markup_mediawiki_cmd_end="$markup_mediawiki_pre_end"
	
	export markup_mediawiki_root_begin='<!-- mediawiki -->'
	export markup_mediawiki_root_end='<!-- /mediawiki -->'
	
	
	export document_mediawiki_root_begin="$comment_shell_line $markup_mediawiki_root_begin $comment_mediawiki_begin $flag__NOT_shell"
	export document_mediawiki_root_end="$comment_shell_line $flag__NOT_shell $comment_mediawiki_end $markup_mediawiki_root_end"
	
	# WARNING: Omitting comment character prevents interpretation as shell script, although it will otherwise be visible without javascript.
	#[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && export document_mediawiki_root_begin="$markup_mediawiki_root_begin $comment_mediawiki_begin $flag__NOT_shell"
	
	
	# ATTENTION: Override.
	_tryExecFull _set_strings_markup_mediawiki_prog "$@"
}

_set_strings_markup_workaround_mediawiki_prog() {
	export workaround_noInterpret_begin=''
	export workaround_noInterpret_end=''
	
	export workaround_noInterpret_begin='<nowiki>'
	export workaround_noInterpret_end='</nowiki>'
	
	export workaround_comment_shell_line=
	#export workaround_comment_shell_line='&#35;'
	#export workaround_comment_shell_line="$workaround_noInterpret_begin"'#'"$workaround_noInterpret_end"
}






# Echo command with commented (shell prepending '#' ) output.
_e-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	echo -n "$markup_mediawiki_cmd_begin"
	
	_color_begin_probe
	#echo -n "$workaround_noInterpret_begin"
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	#echo "$@" | _workaround_noInterpret-mediawiki | _workaround_shellPrependMarkupLines
	_safeEcho_quoteAddSingle_newline "$@" | _workaround_noInterpret-mediawiki | _workaround_shellPrependMarkupLines
	#echo -n "$workaround_noInterpret_end"
	_color_end | _workaround_shellPrependMarkupLines
	
	"$@" | _workaround_shellCommentLines-mediawiki | _workaround_shellPrependMarkupLines
	
	echo "$markup_mediawiki_cmd_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}

_e_-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	echo -n "$markup_mediawiki_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	_color_begin_probe
	#echo -n "$workaround_noInterpret_begin"
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	#echo "$@" | _workaround_noInterpret-mediawiki | _workaround_shellPrependMarkupLines
	_safeEcho_quoteAddSingle_newline "$@" | _workaround_noInterpret-mediawiki | _workaround_shellPrependMarkupLines
	#echo -n "$workaround_noInterpret_end"
	_color_end | _workaround_shellPrependMarkupLines
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_shellCommentLines-mediawiki | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_mediawiki_cmd_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	echo -n "$markup_mediawiki_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _workaround_shellCommentLines-mediawiki
	
	# https://unix.stackexchange.com/questions/254644/how-do-i-remove-the-newline-from-the-last-line-in-a-file-in-order-to-add-text-to
	#perl -p -e 'chomp if eof'
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_preformattedCharacters-mediawiki | _workaround_shellPrependMarkupLines | perl -p -e 'chomp if eof'
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_mediawiki_cmd_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}

# Internal. Use for variables, equation solving, etc.
_i-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	#echo "$markup_mediawiki_cmd_begin"
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval "$@" > /dev/null 2>&1
	
	#echo "$markup_mediawiki_cmd_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}

# Useful to read out a variable (ie. set from 'COLLECT') as preformatted text.
# Variable. Roughly equivalent to '_messagePlain_probe_var' , however, without any declaration of the variable name .
# https://stackoverflow.com/questions/11386586/how-to-show-div-tag-literally-in-code-pre-tag
# 	'You can't (in modern HTML) write markup and have it be interpreted as text.'
_v-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	echo -n "$markup_mediawiki_pre_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval echo -e \$"$1" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _fold-mediawiki | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_mediawiki_pre_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}





# Show preformatted text.
_t-mediawiki() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _t "'"
	echo -n "$flag__NOT_shell $comment_mediawiki_end""$markup_mediawiki_pre_begin"'<!-- mediawiki_noLineBreak'
	
	
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
	
	#[[ "$1" != 'mediawiki_noLineBreak --><nowiki>'* ]] && _safeEcho 'mediawiki_noLineBreak --><nowiki>'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	#[[ "$1" == 'mediawiki_noLineBreak --><nowiki>'* ]] && _safeEcho "$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	#[[ "$1" != 'mediawiki_noLineBreak --><pre'* ]] && _safeEcho 'mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	#[[ "$1" == 'mediawiki_noLineBreak -->'* ]] && _safeEcho "$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	
	#[[ "$1" != 'mediawiki_noLineBreak --><pre'* ]] && [[ "$@" != *'scriptedIllustrator_markup_uk4uPhB663kVcygT0q'*'mediawiki_noLineBreak --><pre'* ]]
	#[[ "$@" != *'mediawiki_noLineBreak --><pre'* ]]
	#! _safeEcho_newline "$@" | grep 'mediawiki_noLineBreak --><pre' > /dev/null 2>&1
	#! _safeEcho_newline "$@" | grep 'scriptedIllustrator_markup_uk4uPhB663kVcygT0q''.*''mediawiki_noLineBreak --><pre' > /dev/null 2>&1
	#! _safeEcho_newline "$@" | grep '<pre' > /dev/null 2>&1
	if _safeEcho_newline "$@" | grep '^.*''scriptedIllustrator_markup_uk4uPhB663kVcygT0q''.*''mediawiki_noLineBreak --><pre''.*$' > /dev/null 2>&1
	then
		_safeEcho 'mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	elif ! _safeEcho_newline "$@" | grep 'mediawiki_noLineBreak --><pre' > /dev/null 2>&1
	then
		_safeEcho 'mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	else
		_safeEcho "$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	fi
	
	#_safeEcho "$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	
	
	#echo '</nowiki>'"$markup_mediawiki_pre_end""$comment_mediawiki_begin $flag__NOT_shell"
	#echo "$markup_mediawiki_pre_end""$comment_mediawiki_begin $flag__NOT_shell"
	echo '</pre>'"$markup_mediawiki_pre_end""$comment_mediawiki_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}


# Raw. Experimental. No production use.
_r-mediawiki() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _r "'"
	echo -n "$flag__NOT_shell $comment_mediawiki_end"'<!-- mediawiki_noLineBreak'
	
	
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
	
	#_safeEcho "$@" | _filter__scriptedIllustrator_markup
	#[[ "$1" != 'mediawiki_noLineBreak -->'* ]] && _safeEcho 'mediawiki_noLineBreak -->'"$@" | _filter__scriptedIllustrator_markup
	#[[ "$1" == 'mediawiki_noLineBreak -->'* ]] && _safeEcho "$@" | _filter__scriptedIllustrator_markup
	
	
	if _safeEcho_newline "$@" | grep '^.*''scriptedIllustrator_markup_uk4uPhB663kVcygT0q''.*''mediawiki_noLineBreak -->''.*$' > /dev/null 2>&1
	then
		_safeEcho 'mediawiki_noLineBreak -->'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	elif ! _safeEcho_newline "$@" | grep 'mediawiki_noLineBreak -->' > /dev/null 2>&1
	then
		_safeEcho 'mediawiki_noLineBreak -->'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	else
		_safeEcho "$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	fi
	
	
	
	echo "$comment_mediawiki_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}

# Hidden. Use for comments and (shell code only) spacing.
_h-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}







_heading1-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h1>'"$@"'</h1>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading2-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h2>'"$@"'</h2>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading3-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h3>'"$@"'</h3>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading4-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h4>'"$@"'</h4>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading5-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h5>'"$@"'</h5>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading6-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h6>'"$@"'</h6>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}

# Page break.
#title page (experiment)
#<div style="page-break-before: always;"> </div>
#<p>
#text page (experiment)
#</p>
_page-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<div style="page-break-before: always;"> </div>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}

_paragraph_begin-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<p>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_paragraph_end-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '</p>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}

_picture-mediawiki() {
	local currentWidth
	currentWidth=""
	[[ "$2" != "" ]] && currentWidth="$2"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_warning_imageName-mediawiki "$@"
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	#./
	#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="float: right;margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	_safeEcho_newline '[[File:'"$1"'|right|'"$currentWidth"']]'
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_image-mediawiki() {
	local currentWidth
	currentWidth="96%"
	[[ "$2" != "" ]] && currentWidth="$2"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_warning_imageName-mediawiki "$@"
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	#./
	#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	_safeEcho_newline '[[File:'"$1"'|'"$currentWidth"']]'
	
	echo "$interpret__mediawiki_NOT_shell__end"
}



_cells_begin-mediawiki() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<table '"$currentWidthParameter"'style="empty-cells: show; border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_end-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '</table>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_row_begin-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<tr>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_row_end-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '</tr>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_speck_begin-mediawiki() {
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
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<td '"$currentWidthParameter"''"$currentColspanParameter"'style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_speck_end-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '</td>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}





# No production use.
_noShell_block-mediawiki() {
	echo -n "$interpret__mediawiki_NOT_shell__begin"
	echo
	
	cat
	
	echo -n "$interpret__mediawiki_NOT_shell__end"
	echo
}

# No production use.
_pre_block-mediawiki() {
	echo -n "$markup_mediawiki_pre_begin"
	echo
	
	cat
	
	echo -n "$markup_mediawiki_pre_end"
	echo
}



_fold-mediawiki() {
	if [[ "$markup_mediawiki_fold" != "" ]]
	then
		fold -w "$markup_mediawiki_fold" -s
		return
	fi
	cat
}




_workaround_preformattedCharacters-mediawiki() {
	#sed 's/#/\&#35;/g'
	#sed 's/#/<nowiki>#<\/nowiki>/g'
	
	sed 's/<nowiki>#<\/nowiki>/#/g' | sed 's/\&#35;/#/g' | sed 's/\&#/_uk4uPhB663kVcygT0q_char_x23_/g' | sed 's/#/\&#35;/g' | sed 's/_uk4uPhB663kVcygT0q_char_x23_/\&#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g"
	
	
	#| sed "s/\\\/\&#92;/"
	#sed 's/\&#/_uk4uPhB663kVcygT0q_char_x23_/g' | sed 's/#/\&#35;/g' | sed 's/_uk4uPhB663kVcygT0q_char_x23_/\&#/g'
}

_workaround_noInterpret-mediawiki() {
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$workaround_noInterpret_begin""$currentString""$workaround_noInterpret_end"
		echo
	done
}

_workaround_shellCommentLines-mediawiki() {
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$workaround_noInterpret_begin""$comment_shell_line""$workaround_noInterpret_end"' '"$currentString"
		echo
	done
}

_warning_imageName-mediawiki() {
	# Recommend ' $(_uid)_12345678.123 ' - 'eg. uk4uPhB663kVcygT0q_filename.jpg' - or similar.
	[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -lt 20 ]] && echo "$currentFunctionName"': warn: image filename <20char: possibly not unique: '"$1" > /dev/tty
	
	
	## https://en.wikipedia.org/wiki/Comparison_of_file_systems#Limits
	
	## Experimental. No production use.
	##[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 10 ]] && echo "$currentFunctionName"': warn: image filename >=10char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'HFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 31 ]] && echo "$currentFunctionName"': warn: image filename >=31char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'FATX' filesystem.
	[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 42 ]] && echo "$currentFunctionName"': warn: image filename >=42char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'CDFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 64 ]] && echo "$currentFunctionName"': warn: image filename >=64char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'NWFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 80 ]] && echo "$currentFunctionName"': warn: image filename >=80char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'VMFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 128 ]] && echo "$currentFunctionName"': warn: image filename >=128char: '"$1" > /dev/tty && return 1
}

_tinyCompiler_scriptedIllustrator_declareFunctions_markup_mediawiki() {
	declare -f _set_markup_mediawiki
	
	declare -f _set_strings_markup_mediawiki
	
	declare -f _set_strings_markup_workaround_mediawiki_prog
	
	
	declare -f _e
	declare -f _e-mediawiki
	
	declare -f _e_
	declare -f _e_-mediawiki
	
	declare -f _o
	declare -f _o-mediawiki
	
	declare -f _i
	declare -f _i-mediawiki
	
	declare -f _v
	declare -f _v-mediawiki
	
	declare -f _t
	declare -f _t-mediawiki
	
	declare -f _r
	declare -f _r-mediawiki
	
	declare -f _
	declare -f _h
	declare -f _h-mediawiki
	
	
	
	
	
	
	declare -f _heading1
	declare -f _heading1-mediawiki
	declare -f _heading2
	declare -f _heading2-mediawiki
	declare -f _heading3
	declare -f _heading3-mediawiki
	declare -f _heading4
	declare -f _heading4-mediawiki
	declare -f _heading5
	declare -f _heading5-mediawiki
	declare -f _heading6
	declare -f _heading6-mediawiki
	
	declare -f _page
	declare -f _page-mediawiki
	
	declare -f _paragraph_begin
	declare -f _paragraph_begin-mediawiki
	declare -f _paragraph_end
	declare -f _paragraph_end-mediawiki
	
	declare -f _picture
	declare -f _picture-mediawiki
	declare -f _image
	declare -f _image-mediawiki
	
	declare -f _cells_begin
	declare -f _cells_begin-mediawiki
	declare -f _cells_end
	declare -f _cells_end-mediawiki
	declare -f _cells_row_begin
	declare -f _cells_row_begin-mediawiki
	declare -f _cells_row_end
	declare -f _cells_row_end-mediawiki
	declare -f _cells_speck_begin
	declare -f _cells_speck_begin-mediawiki
	declare -f _cells_speck_end
	declare -f _cells_speck_end-mediawiki
	
	
	
	declare -f _noShell_block-mediawiki
	declare -f _pre_block-mediawiki
	
	declare -f _fold-mediawiki
	
	
	declare -f _workaround_preformattedCharacters-mediawiki
	
	declare -f _workaround_noInterpret-mediawiki
	
	declare -f _workaround_shellCommentLines-mediawiki
	
	
	
	declare -f _warning_imageName-mediawiki
}


