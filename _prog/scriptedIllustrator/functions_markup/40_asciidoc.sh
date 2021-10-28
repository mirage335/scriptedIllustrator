
#export current_scriptedIllustrator_markup='asciidoc'



_set_markup_asciidoc() {
	export current_scriptedIllustrator_markup='asciidoc'
	
	_noShell_block() {
		_noShell_block-asciidoc "$@"
	}
	export -f _noShell_block
	_pre_block() {
		_pre_block-asciidoc "$@"
	}
	export -f _pre_block
	
	_e() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e-asciidoc "$@"
	}
	export -f _e
	
	_e_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e_-asciidoc "$@"
	}
	export -f _e_
	
	_o() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o-asciidoc "$@"
	}
	export -f _o
	
	_o_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o_-asciidoc "$@"
	}
	export -f _o_
	
	_i() {
		export currentFunctionName="${FUNCNAME[0]}"
		_i-asciidoc "$@"
	}
	export -f _i
	
	_v() {
		export currentFunctionName="${FUNCNAME[0]}"
		_v-asciidoc "$@"
	}
	export -f _v
	
	_t() {
		export currentFunctionName="${FUNCNAME[0]}"
		_t-asciidoc "$@"
	}
	export -f _t
	
	_r() {
		export currentFunctionName="${FUNCNAME[0]}"
		_r-asciidoc "$@"
	}
	export -f _r
	
	_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-asciidoc "$@"
	}
	_h() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-asciidoc "$@"
	}
	export -f _
	export -f _h
	
	
	
	_heading1() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading1-asciidoc "$@"
	}
	export -f _heading1
	_heading2() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading2-asciidoc "$@"
	}
	export -f _heading2
	_heading3() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading3-asciidoc "$@"
	}
	export -f _heading3
	_heading4() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading4-asciidoc "$@"
	}
	export -f _heading4
	_heading5() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading5-asciidoc "$@"
	}
	export -f _heading5
	_heading6() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading6-asciidoc "$@"
	}
	export -f _heading6
	
	_page() {
		export currentFunctionName="${FUNCNAME[0]}"
		_page-asciidoc "$@"
	}
	export -f _page
	
	_paragraph_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_begin-asciidoc "$@"
	}
	export -f _paragraph_begin
	_paragraph_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_end-asciidoc "$@"
	}
	export -f _paragraph_end
	
	
	_picture() {
		export currentFunctionName="${FUNCNAME[0]}"
		_picture-asciidoc "$@"
	}
	export -f _picture
	_image() {
		export currentFunctionName="${FUNCNAME[0]}"
		_image-asciidoc "$@"
	}
	export -f _image
	
	
	_cells_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_begin-asciidoc "$@"
	}
	export -f _cells_begin
	_cells_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_end-asciidoc "$@"
	}
	export -f _cells_end
	_cells_row_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_begin-asciidoc "$@"
	}
	export -f _cells_row_begin
	_cells_row_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_end-asciidoc "$@"
	}
	export -f _cells_row_end
	_cells_speck_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_begin-asciidoc "$@"
	}
	export -f _cells_speck_begin
	_cells_speck_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_end-asciidoc "$@"
	}
	export -f _cells_speck_end
	
	
	
	_markup_asciidoc_disable_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_begin-asciidoc "$@"
	}
	export -f _markup_asciidoc_disable_begin
	
	_markup_asciidoc_disable_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_end-asciidoc "$@"
	}
	export -f _markup_asciidoc_disable_end
}


_set_strings_markup_asciidoc() {
	# WARNING: Inaccurate. Will 'fold' any markup (such as from _messagePlain_probe and similar) as well as visible text.
	#export markup_asciidoc_fold=156
	#export markup_asciidoc_fold=93
	#export markup_asciidoc_fold=76
	
	
	export comment_asciidoc_begin='
////
'
	export comment_asciidoc_end='
////
'
	export comment_asciidoc_line=''
	
	export interpret__asciidoc_NOT_shell__begin="$comment_asciidoc_end"
	export interpret__asciidoc_NOT_shell__end="$comment_asciidoc_begin"
	
	
	export markup_asciidoc_pre_begin='
----
'
	export markup_asciidoc_pre_end=""'
----
'
	
	#export markup_asciidoc_cmd_begin='[gray-background]#x #'
	export markup_asciidoc_cmd_begin=''
	export markup_asciidoc_cmd_end=""
	
	export markup_asciidoc_root_begin=''
	export markup_asciidoc_root_end=''
	
	
	# https://github.com/asciidoctor/asciidoctor/issues/1621
	export document_asciidoc_root_begin="////
exit
# WARNING: DANGER: NOT valid shell script code, do NOT attempt to interpret with /bin/bash or similar !

"
	export document_asciidoc_root_end="
////
"
	
	# WARNING: Omitting comment character prevents interpretation as shell script, although it will otherwise be visible without javascript.
	#[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && export document_asciidoc_root_begin="$markup_asciidoc_root_begin $comment_asciidoc_begin $flag__NOT_shell"
	
	
	# ATTENTION: Override.
	_tryExecFull _set_strings_markup_asciidoc_prog "$@"
}

_set_strings_markup_workaround_asciidoc_prog() {
	export workaround_noInterpret_begin=''
	export workaround_noInterpret_end=''
	
	export workaround_noInterpret_begin=''
	export workaround_noInterpret_end=''
	
	export workaround_comment_shell_line=
	#export workaround_comment_shell_line='&#35;'
	#export workaround_comment_shell_line="$workaround_noInterpret_begin"'#'"$workaround_noInterpret_end"
}






# Echo command with commented (shell prepending '#' ) output.
_e-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_cmd_begin"
	
	_safeEcho_newline "$markup_asciidoc_pre_begin"
	_color_begin_probe
	#echo -n "$workaround_noInterpret_begin"
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	#echo "$@" | _workaround_noInterpret-asciidoc | _workaround_shellPrependMarkupLines
	_safeEcho_quoteAddSingle_newline "$@" | _workaround_noInterpret-asciidoc | _workaround_shellPrependMarkupLines
	#echo -n "$workaround_noInterpret_end"
	_color_end | _workaround_shellPrependMarkupLines
	_safeEcho_newline "$markup_asciidoc_pre_end"
	
	"$@" | _workaround_shellCommentLines-asciidoc | _workaround_shellPrependMarkupLines
	
	echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

_e_-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	_safeEcho_newline "$markup_asciidoc_pre_begin"
	_color_begin_probe
	#echo -n "$workaround_noInterpret_begin"
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	#echo "$@" | _workaround_noInterpret-asciidoc | _workaround_shellPrependMarkupLines
	_safeEcho_quoteAddSingle_newline "$@" | _workaround_noInterpret-asciidoc | _workaround_shellPrependMarkupLines
	#echo -n "$workaround_noInterpret_end"
	_color_end | _workaround_shellPrependMarkupLines
	_safeEcho_newline "$markup_asciidoc_pre_end"
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_shellCommentLines-asciidoc | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _workaround_shellCommentLines-asciidoc
	
	# https://unix.stackexchange.com/questions/254644/how-do-i-remove-the-newline-from-the-last-line-in-a-file-in-order-to-add-text-to
	#perl -p -e 'chomp if eof'
	
	"$@" | _workaround_preformattedCharacters-asciidoc | _workaround_shellPrependMarkupLines | perl -p -e 'chomp if eof'
	
	echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o_-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _workaround_shellCommentLines-asciidoc
	
	# https://unix.stackexchange.com/questions/254644/how-do-i-remove-the-newline-from-the-last-line-in-a-file-in-order-to-add-text-to
	#perl -p -e 'chomp if eof'
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_preformattedCharacters-asciidoc | _workaround_shellPrependMarkupLines | perl -p -e 'chomp if eof'
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Internal. Use for variables, equation solving, etc.
_i-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	#echo "$markup_asciidoc_cmd_begin"
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval "$@" > /dev/null 2>&1
	
	#echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Useful to read out a variable (ie. set from 'COLLECT') as preformatted text.
# Variable. Roughly equivalent to '_messagePlain_probe_var' , however, without any declaration of the variable name .
# https://stackoverflow.com/questions/11386586/how-to-show-div-tag-literally-in-code-pre-tag
# 	'You can't (in modern HTML) write markup and have it be interpreted as text.'
_v-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_pre_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval echo -e \$"$1" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _fold-asciidoc | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_asciidoc_pre_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}




# ATTENTION: OVERRIDE - Second function definition.
# Show preformatted text.
_t-asciidoc() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _t "'"
	echo -n "$flag__NOT_shell $comment_asciidoc_end""$markup_asciidoc_pre_begin"
	
	
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
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak --><nowiki>//' | sed 's/^mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-asciidoc | _fold-asciidoc
	
	echo "$markup_asciidoc_pre_end""$comment_asciidoc_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}
# Raw. Intentionally not interleaved output, intended only when necessitated by a markup language that may not tolerate line breaks.
# _t-asciidoc() {
# 	# No parameters (no input) is meaningless and nothing can be done with that.
# 	[[ "$1" == "" ]] && return 0
# 	#_safeEcho "$@" | sed 's/^mediawiki_noLineBreak --><nowiki>//' | sed 's/^mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-asciidoc | _fold-asciidoc
# 	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak --><nowiki>//' | sed 's/^mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">//' | sed 's/^.*'"$flag__NOT_shell"'.*$//g' | _workaround_preformattedCharacters-asciidoc | _fold-asciidoc
# }

# ATTENTION: OVERRIDE - Second function definition.
# Raw. Experimental. No production use.
_r-asciidoc() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _r "'"
	echo -n "$flag__NOT_shell $comment_asciidoc_end"
	
	
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
	
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak -->//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-asciidoc
	
	
	echo "$comment_asciidoc_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}
# Raw. Intentionally not interleaved output, intended only when necessitated by a markup language that may not tolerate line breaks.
_r-asciidoc() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	#_safeEcho "$@" | sed 's/^mediawiki_noLineBreak -->//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-asciidoc
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak -->//' | sed 's/^.*'"$flag__NOT_shell"'.*$//g' | _workaround_preformattedCharacters-asciidoc
}

# Hidden. Use for comments and (shell code only) spacing.
_h-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}







_heading1-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading2-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '=== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading3-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '==== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading4-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '===== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading5-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '====== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading6-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '======= '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Page break.
#title page (experiment)
#<div style="page-break-before: always;"> </div>
#<p>
#text page (experiment)
#</p>
_page-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	#_safeEcho_newline '<div style="page-break-before: always;"> </div>' | _workaround_shellPrependMarkupLines
_safeEcho_newline '






' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}

_paragraph_begin-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '
' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '<p>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '----' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_paragraph_end-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '
' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '</p>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '----' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}

_picture-asciidoc() {
	local currentWidth
	currentWidth=""
	[[ "$2" != "" ]] && currentWidth="$2"
	
	[[ "$currentWidth" == *"%" ]] && currentWidth=""
	[[ "$currentWidth" == *"px" ]] && currentWidth=$(_safeEcho_newline "$currentWidth" | tr -dc '0-9')
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_warning_imageName-asciidoc "$@"
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	#./
	#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="float: right;margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '[[File:'"$1"'|right|'"$currentWidth"']]'
	[[ "$currentWidthParameter" != "" ]] && _safeEcho_newline 'image:'"$1"'[
"picture",width='"$currentWidth"',
link="'"$1"'"]'
	[[ "$currentWidthParameter" == "" ]] && _safeEcho_newline 'image:'"$1"'[]'
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_image-asciidoc() {
	local currentWidth
	#currentWidth="96%"
	currentWidth="900px"
	[[ "$2" != "" ]] && currentWidth="$2"
	
	[[ "$currentWidth" == *"%" ]] && currentWidth=""
	[[ "$currentWidth" == *"px" ]] && currentWidth=$(_safeEcho_newline "$currentWidth" | tr -dc '0-9')
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_warning_imageName-asciidoc "$@"
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	#./
	#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '[[File:'"$1"'|'"$currentWidth"']]'
	[[ "$currentWidthParameter" != "" ]] && _safeEcho_newline 'image:'"$1"'[
"image",width='"$currentWidth"',
link="'"$1"'"]'
	[[ "$currentWidthParameter" == "" ]] && _safeEcho_newline 'image:'"$1"'[]'
	
	echo "$interpret__asciidoc_NOT_shell__end"
}



_cells_begin-asciidoc() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '|====' | _workaround_shellPrependMarkupLines
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_end-asciidoc() {
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '|====' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_row_begin-asciidoc() {
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho ''
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_row_end-asciidoc() {
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '' | _workaround_shellPrependMarkupLines
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_speck_begin-asciidoc() {
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
	
	
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho '|'
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_speck_end-asciidoc() {
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho ' '
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}






_markup_asciidoc_disable_begin-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	export current_markup_asciidoc_disable="true"
	
	export comment_asciidoc_begin=''
	export comment_asciidoc_end=''
	export interpret__asciidoc_NOT_shell__begin=""
	export interpret__asciidoc_NOT_shell__end=""
}

_markup_asciidoc_disable_end-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_safeEcho_newline "$comment_asciidoc_end"
	
	export current_markup_asciidoc_disable=""
	unset current_markup_asciidoc_disable
	_set_markup_asciidoc
	_set_strings
	_set_strings_markup_workaround_asciidoc_prog
}





# No production use.
_noShell_block-asciidoc() {
	echo -n "$interpret__asciidoc_NOT_shell__begin"
	echo
	
	cat
	
	echo -n "$interpret__asciidoc_NOT_shell__end"
	echo
}

# No production use.
_pre_block-asciidoc() {
	echo -n "$markup_asciidoc_pre_begin"
	echo
	
	cat
	
	echo -n "$markup_asciidoc_pre_end"
	echo
}



_fold-asciidoc() {
	if [[ "$markup_asciidoc_fold" != "" ]]
	then
		fold -w "$markup_asciidoc_fold" -s
		return
	fi
	cat
}




_workaround_preformattedCharacters-asciidoc() {
	#sed 's/#/\&#35;/g'
	#sed 's/#/<nowiki>#<\/nowiki>/g'
	
	sed 's/<nowiki>#<\/nowiki>/#/g' | sed 's/\&#35;/#/g' | sed 's/\&#/_uk4uPhB663kVcygT0q_char_x23_/g' | sed 's/#/\&#35;/g' | sed 's/_uk4uPhB663kVcygT0q_char_x23_/\&#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g" | sed "s/\\\x3c/\&lt;/g" | sed "s/\\\060/\&lt;/g" | sed "s/%3c/\&lt;/g" | sed "s/\&lt;/\&lt;/g"
	
	
	#| sed "s/\\\/\&#92;/"
	#sed 's/\&#/_uk4uPhB663kVcygT0q_char_x23_/g' | sed 's/#/\&#35;/g' | sed 's/_uk4uPhB663kVcygT0q_char_x23_/\&#/g'
}

_workaround_noInterpret-asciidoc() {
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$workaround_noInterpret_begin""$currentString""$workaround_noInterpret_end"
		echo
	done
}

_workaround_shellCommentLines-asciidoc() {
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$workaround_noInterpret_begin""$comment_shell_line""$workaround_noInterpret_end"' '"$currentString"
		echo
	done
}

_warning_imageName-asciidoc() {
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

_tinyCompiler_scriptedIllustrator_declareFunctions_markup_asciidoc() {
	declare -f _set_markup_asciidoc
	
	declare -f _set_strings_markup_asciidoc
	
	declare -f _set_strings_markup_workaround_asciidoc_prog
	
	
	declare -f _e
	declare -f _e-asciidoc
	
	declare -f _e_
	declare -f _e_-asciidoc
	
	declare -f _o
	declare -f _o-asciidoc
	
	declare -f _o_
	declare -f _o_-asciidoc
	
	declare -f _i
	declare -f _i-asciidoc
	
	declare -f _v
	declare -f _v-asciidoc
	
	declare -f _t
	declare -f _t-asciidoc
	
	declare -f _r
	declare -f _r-asciidoc
	
	declare -f _
	declare -f _h
	declare -f _h-asciidoc
	
	
	
	
	
	
	declare -f _heading1
	declare -f _heading1-asciidoc
	declare -f _heading2
	declare -f _heading2-asciidoc
	declare -f _heading3
	declare -f _heading3-asciidoc
	declare -f _heading4
	declare -f _heading4-asciidoc
	declare -f _heading5
	declare -f _heading5-asciidoc
	declare -f _heading6
	declare -f _heading6-asciidoc
	
	declare -f _page
	declare -f _page-asciidoc
	
	declare -f _paragraph_begin
	declare -f _paragraph_begin-asciidoc
	declare -f _paragraph_end
	declare -f _paragraph_end-asciidoc
	
	declare -f _picture
	declare -f _picture-asciidoc
	declare -f _image
	declare -f _image-asciidoc
	
	declare -f _cells_begin
	declare -f _cells_begin-asciidoc
	declare -f _cells_end
	declare -f _cells_end-asciidoc
	declare -f _cells_row_begin
	declare -f _cells_row_begin-asciidoc
	declare -f _cells_row_end
	declare -f _cells_row_end-asciidoc
	declare -f _cells_speck_begin
	declare -f _cells_speck_begin-asciidoc
	declare -f _cells_speck_end
	declare -f _cells_speck_end-asciidoc
	
	
	
	declare -f _markup_asciidoc_disable_begin
	declare -f _markup_asciidoc_disable_begin-asciidoc
	declare -f _markup_asciidoc_disable_end
	declare -f _markup_asciidoc_disable_end-asciidoc
	
	
	
	declare -f _noShell_block-asciidoc
	declare -f _pre_block-asciidoc
	
	declare -f _fold-asciidoc
	
	
	declare -f _workaround_preformattedCharacters-asciidoc
	
	declare -f _workaround_noInterpret-asciidoc
	
	declare -f _workaround_shellCommentLines-asciidoc
	
	
	
	declare -f _warning_imageName-asciidoc
}


