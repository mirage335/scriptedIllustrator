
#####Markup.





_e_procedure() {
	# https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_07.html
	#_safeEcho_newline _e "$@"
	_safeEcho '_e '
	while (( "$#" )); do
		_safeEcho ' '"'""$1""'"
		shift
	done
	_safeEcho_newline
}
# Echo command with commented (shell prepending '#' ) output.
_e() {
	_e_procedure "$@"
	"$@" | _shellCommentLines | _noShell_block
	#eval "$@" | _noShell_block
}
_e__procedure() {
	# https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_07.html
	#_safeEcho_newline _e "$@"
	_safeEcho '_e_ '
	while (( "$#" )); do
		_safeEcho ' '"'""$1""'"
		shift
	done
	_safeEcho_newline
}
_e_() {
	_e__procedure "$@"
	#"$@" | _noShell_block
	#eval "$@" > /dev/null
	#_noShell_block <(eval "$@")
	
	# Technically works, but temporary files are a severe disadvantage here (especially MSW/Cygwin with VBox network drives).
	#eval "$@" > ./temp
	#cat ./temp | _noShell_block
	
	#_safeEcho "$@" | source /dev/stdin | _noShell_block
	
	#_safeEcho `eval "$@"` |  _noShell_block
	
	
	local current_miniSessionID=$(_uid 8)
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitiousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitiousBashIDnano:0:3}" | _shellCommentLines | _noShell_block
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitiousBashIDnano:0:3}" > /dev/null 2>&1
}
# Internal. Use for variables, equation solving, etc.
_i() {
	# Equivalent to 'echo' of something like '#  < ! - -' .
	echo -n '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	echo
	
	_safeEcho_newline _i "'""$@""'"
	
	# Equivalent to 'echo' of something like '#  - - >' .
	echo -n '# --> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	echo
	
	eval "$@" > /dev/null
	
	# https://stackoverflow.com/questions/17529220/why-should-eval-be-avoided-in-bash-and-what-should-i-use-instead
	#eval '"$@"' > /dev/null
}
# Show preformatted text.
_t() {
	# Equivalent to 'echo' of something like '#  < ! - -' .
	#echo 'IyA8IS0tIHNjcmlwdGVkSWxsdXN0cmF0b3JfbWFya3VwX3VrNHVQaEI2NjNrVmN5Z1QwcQo=' | base64 -d
	
	#_safeEcho_newline _t "'""$@""'"
	
	# Equivalent to 'echo' of something like '#  - - >' .
	#echo 'IyAtLT4gPCEtLSBzY3JpcHRlZElsbHVzdHJhdG9yX21hcmt1cF91azR1UGhCNjYza1ZjeWdUMHEgLS0+Cg==' | base64 -d
	
	#_safeEcho_newline "$@" | _noShell_block
	
	
	
	# Equivalent to 'echo' of something like '#  < ! - -' .
	echo -n '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	echo
	
	_safeEcho_newline _t "'"
	
	echo -n '# --> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	
	#_safeEcho_newline
	
	# https://stackoverflow.com/questions/1251999/how-can-i-replace-a-newline-n-using-sed
	# https://stackoverflow.com/questions/1251999/how-can-i-replace-a-newline-n-using-sed/1252010#1252010
	#echo -e '\n# --> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->' | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n\# \-\->.*$/ /'
	
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
	
	
	
	echo -n '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	echo
	
	_safeEcho_newline "'"
	
	echo -n '# --> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	echo
	
}
# Hidden. Use for comments and spacing.
_h() {
	# Equivalent to 'echo' of something like '#  < ! - -' .
	echo -n '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	echo
	
	_safeEcho_newline _ "'""$@""'"
	
	# Equivalent to 'echo' of something like '#  - - >' .
	echo -n '# --> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	echo
}
_() {
	_h "$@"
}
_v() {
	echo -n '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	echo
	_safeEcho '_v '
	_safeEcho ' '"'""$1""'"
	_safeEcho_newline
	echo -n '# --> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	echo
	
	eval echo -e \$"$1" > "$bootTmp"/"$current_miniSessionID"."${ubiquitiousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitiousBashIDnano:0:3}" | _shellCommentLines | _noShell_block
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitiousBashIDnano:0:3}" > /dev/null 2>&1
}

# Raw. Experimental. No production use.
_r() {
	echo -n '# <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	echo
	
	_safeEcho_newline _r "'"
	
	echo -n '# --> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q --> </pre>'
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		#echo --------- > /dev/tty
		#echo "$currentLine" > /dev/tty
		#echo "$currentLine_previous" > /dev/tty
		#echo "$currentIteration" > /dev/tty
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]]
		then
			_safeEcho_newline
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && _safeEcho_newline
	
	_safeEcho "$@" | _filter__scriptedIllustrator_markup
	
	echo -n '<pre style="white-space: pre;"># <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	echo
	
	_safeEcho_newline "'"
	
	echo -n '# --> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	echo
}



# TODO: Functions to add other markup - ie. '_markup_tag' .
# Line Breaks
# Page Breaks
# Paragraphs
# Frames
# Tables
# Headings
# Images (base64 HTML Image tags, mediawiki reference, or terminal)

# TODO: Functions to send 'messages' with standard color schmes - ie. _messagePlain (with environment variable set to emit markup instead of ANSI color codes).









_tinyCompiler_scriptedIllustrator_declareFunctions_wip() {
	declare -f _e_procedure
	declare -f _e
	declare -f _e__procedure
	declare -f _e_
	declare -f _i
	declare -f _t
	declare -f _h
	declare -f _
	declare -f _v
	declare -f _r
}

