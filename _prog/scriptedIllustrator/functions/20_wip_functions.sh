
#####Markup.








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
	declare -f _h
	declare -f _
	declare -f _v
}

