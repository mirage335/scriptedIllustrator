##### Core

_tiny_criticalDep() {
	! _getAbsolute_criticalDep && exit 1
	
	! type -p sed > /dev/null 2>&1 && exit 1
	! type -p head > /dev/null 2>&1 && exit 1
	! type -p awk > /dev/null 2>&1 && exit 1
	! type -p grep > /dev/null 2>&1 && exit 1
	! type -p ls > /dev/null 2>&1 && exit 1
	! type -p base64 > /dev/null 2>&1 && exit 1
	
	! type -p xz > /dev/null 2>&1 && exit 1
	
	! type -p fold > /dev/null 2>&1 && exit 1
	
	#! type -p cksum > /dev/null 2>&1 && exit 1
	#! type -p env > /dev/null 2>&1 && exit 1
	
	return 0
}

_tiny_set_strings() {
	_tryExec _set_strings_markup_scribble
	
	_set_strings_markup_shell
	_tryExec _set_strings_markup_editable
	_tryExec _set_strings_markup_terminal
	
	_set_strings_markup_html
	_tryExec _set_strings_markup_mediawiki
	_tryExec _set_strings_markup_asciidoc
	
	_tryExec _set_strings_markup_python_docx
	
	
	# CAUTION: Developer convenience, not relied upon. Causes 'export -f' functions under '_set_markup_' functions to take precedence over upstream.
	[[ "$current_scriptedIllustrator_markup" != "" ]] && _set_markup_"$current_scriptedIllustrator_markup"
}
_set_strings() {
	_tiny_set_strings "$@"
}




# https://stackoverflow.com/questions/1279953/how-to-execute-the-output-of-a-command-within-the-current-shell
#eval "$( _tinyCompiler_scriptedIllustrator_declareFunctions | xz -z -e9 -C none --threads=1 | base64 | base64 -d | xz -d)"
#source <( _tinyCompiler_scriptedIllustrator_declareFunctions | xz -z -e9 -C none --threads=1 | base64 | base64 -d | xz -d)
_tinyCompiler_scriptedIllustrator_declareFunctions() {
	declare -f _realpath_L
	declare -f _realpath_L_s
	declare -f _cygwin_translation_rootFileParameter
	declare -f _getAbsolute_criticalDep
	
	declare -f _tiny_criticalDep
	
	declare -f _tryExec
	declare -f _tryExecFull
	
	
	#declare -f _wantGetDep
	#declare -f _wantDep
	declare -f _typeDep
	declare -f _if_cygwin
	#declare -f _wantSudo
	
	declare -f _getDep
	
	_wantGetDep() {
		_typeDep "$@"
	}
	export -f _wantGetDep
	declare -f _wantGetDep
	_wantDep() {
		_typeDep "$@"
	}
	export -f _wantDep
	declare -f _wantDep
	_wantSudo() {
		false
	}
	export -f _wantSudo
	declare -f _wantSudo
	_getDep() {
		_typeDep "$@"
	}
	export -f _getDep
	declare -f _getDep
	
	# CAUTION: Interleaved markup scripts may not be correctly interpreted as bash when called through 'sudo', among other problems. Apparently, this may occur even if 'bash -c' is called by sudo .
	sudo() {
		false
	}
	export -f sudo
	declare -f sudo
	
	
	
	# Roughly equivalent to 'specglobalvars'.
	declare -f _tiny_set_strings
	declare -f _set_strings
	
	declare -f _getScriptAbsoluteLocation
	declare -f _getScriptAbsoluteFolder
	declare -f _getAbsoluteLocation
	declare -f _uid
	declare -f _safeEcho
	declare -f _safeEcho_newline
	declare -f _safeEcho_quoteAddSingle
	declare -f _safeEcho_quoteAddSingle_newline
	declare -f _safeEcho_quoteAddDouble
	declare -f _safeEcho_quoteAddDouble_newline
	
	declare -f _color_demo
	declare -f _color_end
	declare -f _color_begin_request
	declare -f _color_begin_nominal
	declare -f _color_begin_probe
	declare -f _color_begin_probe_noindent
	declare -f _color_begin_good
	declare -f _color_begin_warn
	declare -f _color_begin_bad
	declare -f _color_begin_Normal
	declare -f _color_begin_Error
	declare -f _color_begin_DELAYipc
	
	declare -f _messageNormal
	declare -f _messageError
	declare -f _messagePlain_request
	declare -f _messagePlain_nominal
	declare -f _messagePlain_good
	declare -f _messagePlain_warn
	declare -f _messagePlain_bad
	declare -f _messagePlain_probe
	declare -f _messagePlain_probe_noindent
	declare -f _messagePlain_probe_cmd
	declare -f _messagePlain_probe_var
	declare -f _messagePlain_probe_quoteAddDouble
	declare -f _messagePlain_probe_quoteAdd
	declare -f _messagePlain_probe_quoteAddSingle
	
	declare -f _qalculate_terse
	declare -f _qalculate
	declare -f _qalculate_pipe
	declare -f _qalculate_script
	declare -f _qalculate_solve
	declare -f _qalculate_nsolve
	
	declare -f _octave_terse
	declare -f _octave
	declare -f _octave_pipe
	declare -f _octave_script
	declare -f _octave_filter-messages
	declare -f _octave_solve
	declare -f _octave_nsolve
	
	
	declare -f _solve
	declare -f solve
	declare -f nsolve
	declare -f _clc
	declare -f clc
	declare -f c
	
	
	declare -f _README
	declare -f _HEADER-scriptCode
	declare -f _FOOTER-scriptCode
	declare -f _DOCUMENT-scriptCode
	declare -f _ignore_DOCUMENT_HEADER
	declare -f _ignore_DOCUMENT_FOOTER
	declare -f _HEADER
	declare -f _FOOTER
	declare -f _DOCUMENT
	declare -f _onlyAttachment
	declare -f _noAttachment
	declare -f _rmAttachment
	declare -f _attachAttachment
	declare -f _extractAttachment
	
	
	declare -f _test_prog
	declare -f _test_built_default
	declare -f _test_default
	
	declare -f _default_main
	declare -f _default
	declare -f _default_collect
	declare -f _default_gather
	declare -f _gather
	declare -f _default_enter
	declare -f _default_launch
	
	
	# ATTENTION: WIP.
	_tinyCompiler_scriptedIllustrator_declareFunctions_wip
	
	# ATTENTION: Experimental.
	_tinyCompiler_scriptedIllustrator_declareFunctions_experimental
	
	
	
	_tinyCompiler_scriptedIllustrator_declareFunctions_core
	
	
	
	_tinyCompiler_scriptedIllustrator_declareFunctions_scribble
	
	_tinyCompiler_scriptedIllustrator_declareFunctions_markup_shell
	_tryExec _tinyCompiler_scriptedIllustrator_declareFunctions_markup_editable
	_tinyCompiler_scriptedIllustrator_declareFunctions_markup_terminal
	
	_tinyCompiler_scriptedIllustrator_declareFunctions_markup_html
	_tryExec _tinyCompiler_scriptedIllustrator_declareFunctions_markup_mediawiki
	_tryExec _tinyCompiler_scriptedIllustrator_declareFunctions_markup_asciidoc
	
	_tryExec _tinyCompiler_scriptedIllustrator_declareFunctions_markup_python_docx
}



_tinyCompiler_scriptedIllustrator() {
	_messageNormal 'tinyCompiler_scriptedIllustrator'
	
	_findUbiquitous
	_vars_generate_bash
	export progScript="$scriptAbsoluteFolder"/scriptedIllustrator.sh
	rm -f "$progScript" >/dev/null 2>&1
	
	
	# DANGER: Extremely large filesizes (caused by too much 'current_internal_compressedFuncssedFunctions') may not be compatible with important use cases (eg. 'mediawiki').
	# https://en.wikipedia.org/wiki/Wikipedia:Article_size
	#  'maximum limit for Wikipedia is set by the MediaWiki software default article size limit, 2048 kibibytes (specifically, 2,097,152 bytes)'
	echo "#####Functions. Some may be from 'ubiquitous bash' ." > "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	#echo "# DANGER: Compatibility with some important use cases (eg. 'mediawiki') may fail if 'current_internal_CompressedFunctions_bytes' is substantial ." >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	
	
	local current_internal_CompressedFunctions
	current_internal_CompressedFunctions=$(_tinyCompiler_scriptedIllustrator_declareFunctions | xz -z -e9 -C crc64 --threads=1 | base64 -w 156 | fold -w 156 -s)
	local current_internal_CompressedFunctions_cksum
	current_internal_CompressedFunctions_cksum=$(echo "$current_internal_CompressedFunctions" | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9')
	local current_internal_CompressedFunctions_bytes
	current_internal_CompressedFunctions_bytes=$(echo "$current_internal_CompressedFunctions" | wc -c | tr -dc '0-9')
	
	
	echo '#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	echo 'current_internal_CompressedFunctions_bytes='\""$current_internal_CompressedFunctions_bytes"\" >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo 'current_internal_CompressedFunctions_cksum='\""$current_internal_CompressedFunctions_cksum"\" >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo 'current_internal_CompressedFunctions='\" >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo "$current_internal_CompressedFunctions"\" >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo '! echo "$current_internal_CompressedFunctions" | base64 -d | xz -d > /dev/null && exit 1' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	echo 'source <( echo "$current_internal_CompressedFunctions" | base64 -d | xz -d )' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	#echo 'eval "$( echo "$current_internal_CompressedFunctions" | base64 -d | xz -d )"' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	echo 'unset current_internal_CompressedFunctions ; unset current_internal_CompressedFunctions_cksum ; unset current_internal_CompressedFunctions_bytes' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	echo '# https://github.com/mirage335/scriptedIllustrator' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo '#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	
	# WARNING: Declaring 'markup' functions as plaintext may cause inappropriate interpretation!
	#_tinyCompiler_scriptedIllustrator_declareFunctions >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	
	echo '! _tiny_criticalDep && exit 1' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	unset current_internal_CompressedFunctions ; unset current_internal_CompressedFunctions_cksum ; unset current_internal_CompressedFunctions_bytes
	
	
	echo '' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo '# Special Global Variables' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo '_tiny_set_strings' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	
	# CAUTION: Do NOT add trap unless necessary or within a function call. Unnecessary and may be problematic for a script which imports 'ubiquitous bash' and does not nominally use '_start'/'_stop'/"$safeTmp"/etc .
	
	#echo '#!/usr/bin/env bash' > "$progScript"
	
	export includeScriptList
	#_compile_bash_header
	includeScriptList+=( "scriptedIllustrator"/01_shell_header.sh )
	#includeScriptList+=( "generic"/minimalheader.sh )
	includeScriptList+=( "scriptedIllustrator"/05_editable_header.sh )
	
	includeScriptList+=( "scriptedIllustrator"/functions/19_declared_functions.sh )
	#includeScriptList+=( "scriptedIllustrator"/functions/20_wip_functions.sh )
	#includeScriptList+=( "scriptedIllustrator"/functions/25_experimental_functions.sh )
	includeScriptList+=( "scriptedIllustrator"/30_import_ubiquitousBash.sh )
	
	#includeScriptList+=( "scriptedIllustrator"/functions/40_splice_functions.sh )
	
	includeScriptList+=( "scriptedIllustrator"/70_core.sh )
	includeScriptList+=( "scriptedIllustrator"/79_program.sh )
	
	includeScriptList+=( "scriptedIllustrator"/80_footer.sh )
	
	
	_messagePlain_nominal 'init: _includeScripts'
	if _includeScripts "${includeScriptList[@]}"
	then
		_messagePlain_good 'pass: _includeScripts'
	else
		_messagePlain_warn 'fail: _includeScripts'
	fi
	
	
	
	
	
	
	#echo >> "$progScript"
	#echo 'exit 0' >> "$progScript"
	
	# WARNING: Checksum is strongly discouraged, since direct editing of the file is intended!
	_tryExecFull _ub_cksum_special_derivativeScripts_write "$progScript"
	
	chmod u+x "$progScript"
	
	_tinyCompiler_scriptedIllustrator_convert
}


_tinyCompiler_scriptedIllustrator_convert() {
	"$progScript"
}







_refresh_anchors() {
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_bash.bat
}

