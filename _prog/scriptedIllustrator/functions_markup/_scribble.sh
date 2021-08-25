
# ATTENTION: WIP !
_scribble_html() {
	export current_scriptedIllustrator_markup='html'
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	# https://stackoverflow.com/questions/26633623/remove-all-text-from-last-dot-in-bash
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | sed 's/\.[^.]*$//' )
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup"
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	echo -n > "$currentOutputFile".tmp
	! [[ -e "$currentOutputFile".tmp ]] && exit 1
	
	# Solely to prevent saved 'html' markup file from being perceived by 'magic sequences' as itself a shell script for file association purposes.
	echo -n '# <html> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->' >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	_HEADER | _filter__scriptedIllustrator_markup | _hideFrom_markup_html >> "$currentOutputFile".tmp
	
	
	"$scriptAbsoluteLocation" DOCUMENT | _break_markup_html >> "$currentOutputFile".tmp
	
	
	_FOOTER | _filter__scriptedIllustrator_markup | _hideFrom_markup_html >> "$currentOutputFile".tmp
	
	echo -n '# </html> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->' >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	chmod u+x "$currentOutputFile".tmp
	
	mv "$currentOutputFile".tmp "$currentOutputFile"
}



_tinyCompiler_scriptedIllustrator_declareFunctions_scribble() {
	declare -f _scribble_html
}

