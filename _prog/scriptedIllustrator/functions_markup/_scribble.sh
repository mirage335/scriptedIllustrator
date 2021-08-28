

_scribble_html_presentation() {
	export current_scriptedIllustrator_presentation='true'
	_scribble_html "$@"
}


_scribble_html() {
	_set_markup_html
	_set_strings
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	# https://stackoverflow.com/questions/26633623/remove-all-text-from-last-dot-in-bash
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | sed 's/\.[^.]*$//' )
	[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && currentScriptBasename="$currentScriptBasename"_presentation
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup"
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	echo -n > "$currentOutputFile".tmp
	! [[ -e "$currentOutputFile".tmp ]] && exit 1
	
	
	
	echo -n "$document_html_root_begin" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	
	
	
	_HEADER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	"$scriptAbsoluteLocation" DOCUMENT >> "$currentOutputFile".tmp
	
	_FOOTER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	
	
	echo -n "$document_html_root_end" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	
	chmod u+x "$currentOutputFile".tmp
	mv "$currentOutputFile".tmp "$currentOutputFile"
}



_tinyCompiler_scriptedIllustrator_declareFunctions_scribble() {
	declare -f _scribble_html
	declare -f _scribble_html_presentation
}

