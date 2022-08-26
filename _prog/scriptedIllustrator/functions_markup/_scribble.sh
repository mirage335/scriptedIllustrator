
_scribble_html_presentation() {
	export current_scriptedIllustrator_presentation='true'
	_scribble_html "$@"
	export current_scriptedIllustrator_presentation=""
}


_scribble_html() {
	_set_markup_html
	_set_strings
	_set_strings_markup_workaround_html_prog
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	# https://stackoverflow.com/questions/26633623/remove-all-text-from-last-dot-in-bash
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | _scribble_filter_extensions )
	[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && currentScriptBasename="$currentScriptBasename"_presentation
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup"
	[[ "$current_scriptedIllustrator_markup_markdown" == 'true' ]] && currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename".md
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	echo -n > "$currentOutputFile".tmp
	! [[ -e "$currentOutputFile".tmp ]] && exit 1
	
	
	
	echo -n "$document_html_root_begin" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	
	
	
	_HEADER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	#echo 'scriptedIllustrator_markup_uk4uPhB663kVcygT0q --> --> <!-- ' >> "$currentOutputFile".tmp
	
	"$scriptAbsoluteLocation" DOCUMENT >> "$currentOutputFile".tmp
	
	_FOOTER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	
	
	
	#echo -n "$document_html_root_end" >> "$currentOutputFile".tmp
	echo -n filename."$current_scriptedIllustrator_markup" "$document_html_root_end" >> "$currentOutputFile".tmp
	#echo -n "$currentScriptBasename"."$current_scriptedIllustrator_markup" "$document_html_root_end" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	if [[ "$current_scriptedIllustrator_markup_markdown" == 'true' ]]
	then
		mv "$currentOutputFile".tmp "$currentOutputFile".tmp.html
		echo '<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q 
#exit # scriptedIllustrator_markup_uk4uPhB663kVcygT0q ' >> "$currentOutputFile".tmp.md
		cat "$currentOutputFile".tmp.md "$currentOutputFile".tmp.html > "$currentOutputFile".tmp
		rm -f "$currentOutputFile".tmp.md "$currentOutputFile".tmp.html
	fi
	
	chmod u+x "$currentOutputFile".tmp
	mv "$currentOutputFile".tmp "$currentOutputFile"
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}

_scribble_pdf() {
	_set_markup_html
	_set_strings
	_set_strings_markup_html
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | _scribble_filter_extensions )
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename".pdf
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	! type wkhtmltopdf > /dev/null 2>&1 && rm -f "$currentOutputFile" > /dev/null 2>&1 && return 1
	
	
	rm -f "$currentOutputFile".html > /dev/null 2>&1
	_scribble_html_presentation "$currentOutputFile".html
	
	rm -f "$currentOutputFile" > /dev/null 2>&1
	#--zoom 1.0 --enable-javascript --javascript-delay 750 --enable-local-file-access --disable-plugins --disable-smart-shrinking
	#wkhtmltopdf --page-size A4 "$currentOutputFile".html "$currentOutputFile".a4.pdf
	#wkhtmltopdf --page-size Letter "$currentOutputFile".html "$currentOutputFile".letter.pdf
	wkhtmltopdf --enable-local-file-access --javascript-delay 9500 --page-size Letter "$currentOutputFile".html "$currentOutputFile"
	rm -f "$currentOutputFile".html
	[[ -e "$currentOutputFile" ]] && return 0
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}

_scribble_markdown() {
	export current_scriptedIllustrator_markup_markdown='true'
	
	if [[ "$current_markup_html_fold" == "" ]]
	then
		export current_markup_html_fold=76
		_scribble_html "$@"
		export current_markup_html_fold=
		unset current_markup_html_fold
	else
		_scribble_html "$@"
	fi
	
	export current_scriptedIllustrator_markup_markdown=""
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}
_scribble_md() {
	_scribble_markdown "$@"
}

# ###


_scribble_mediawiki() {
	_set_markup_mediawiki
	_set_strings
	_set_strings_markup_workaround_mediawiki_prog
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	# https://stackoverflow.com/questions/26633623/remove-all-text-from-last-dot-in-bash
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | _scribble_filter_extensions )
	[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && currentScriptBasename="$currentScriptBasename"_presentation
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename".txt
	! _safeEcho_newline "$currentOutputFile" | grep '\.'"$current_scriptedIllustrator_markup".txt > /dev/null 2>&1 && currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".txt
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	echo -n > "$currentOutputFile".tmp
	! [[ -e "$currentOutputFile".tmp ]] && exit 1
	
	
	
	echo -n "$document_mediawiki_root_begin" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	
	
	
	_HEADER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	"$scriptAbsoluteLocation" DOCUMENT >> "$currentOutputFile".tmp
	
	_FOOTER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	
	
	
	#echo -n "$document_mediawiki_root_end" >> "$currentOutputFile".tmp
	echo -n filename."$current_scriptedIllustrator_markup".txt "$document_mediawiki_root_end" >> "$currentOutputFile".tmp
	#echo -n "$currentScriptBasename"."$current_scriptedIllustrator_markup".txt "$document_mediawiki_root_end" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	chmod u+x "$currentOutputFile".tmp
	mv "$currentOutputFile".tmp "$currentOutputFile"
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}


_scribble_asciidoc() {
	_set_markup_asciidoc
	_set_strings
	_set_strings_markup_workaround_asciidoc_prog
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	# https://stackoverflow.com/questions/26633623/remove-all-text-from-last-dot-in-bash
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | _scribble_filter_extensions )
	[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && currentScriptBasename="$currentScriptBasename"_presentation
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename".txt
	! _safeEcho_newline "$currentOutputFile" | grep '\.'"$current_scriptedIllustrator_markup".txt > /dev/null 2>&1 && currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".txt
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	echo -n > "$currentOutputFile".tmp
	! [[ -e "$currentOutputFile".tmp ]] && exit 1
	
	
	
	echo -n "$document_asciidoc_root_begin" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	
	
	
	#_HEADER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	"$scriptAbsoluteLocation" DOCUMENT >> "$currentOutputFile".tmp
	
	#_FOOTER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	
	
	
	#echo -n "$document_asciidoc_root_end" >> "$currentOutputFile".tmp
	echo -n filename."$current_scriptedIllustrator_markup".txt "$document_asciidoc_root_end" >> "$currentOutputFile".tmp
	#echo -n "$currentScriptBasename"."$current_scriptedIllustrator_markup".txt "$document_asciidoc_root_end" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	chmod u+x "$currentOutputFile".tmp
	mv "$currentOutputFile".tmp "$currentOutputFile"
	
	
	
	#date() {
	#	echo 'disabled: date'
	#}
	#export -f date
	
	rm -f "$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".html
	
	asciidoc "$currentOutputFile"
	# https://stackoverflow.com/questions/8323287/how-can-i-use-sed-to-delete-2-lines-after-match-matches
	sed -i -e '/^Last updated/,+1d' "$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".html
	
	wkhtmltopdf --enable-local-file-access --javascript-delay 9500 --page-size Letter "$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".html "$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".pdf
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}






# ###

_scribble_all() {
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	if [[ "$currentScriptBasename" == 'scriptedIllustrator''.'* ]]
	then
	
		"$scriptAbsoluteLocation" DOCUMENT > "$scriptAbsoluteLocation".out.txt
	
	fi
	
	
	_scribble_html "$@"
	_scribble_html_presentation "$@"
	
	_scribble_pdf "$@"
	
	_scribble_markdown "$@"
	
	# ###
	
	
	
	_scribble_mediawiki "$@"
	
	
	
	
	
	
	if [[ "$currentScriptBasename" == 'scriptedIllustrator''.'* ]]
	then
		
		_scribble_asciidoc "$@"
		
	fi
	
	
	return;
}

# ###

_scribble_filter_extensions() {
	sed 's/\.mediawiki\.txt$/.txt/' | sed 's/\.asciidoc\.txt$/.txt/' | sed 's/\.[^.]*$//'
}



_tinyCompiler_scriptedIllustrator_declareFunctions_scribble() {
	declare -f _scribble_html
	declare -f _scribble_html_presentation
	
	declare -f _scribble_pdf
	
	declare -f _scribble_markdown
	declare -f _scribble_md
	
	# ###
	
	
	
	declare -f _scribble_mediawiki
	
	declare -f _scribble_asciidoc
	
	
	
	
	# ###
	
	declare -f _scribble_all
	
	# ###
	declare -f _scribble_filter_extensions
}

