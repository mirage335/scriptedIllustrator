
# TODO: Cause all markup to print to terminal as ANSI escape codes. Interleaving of shell code may not be possible in this case.
#export current_scriptedIllustrator_markup='terminal'
#export current_scriptedIllustrator_markup=''







_tinyCompiler_scriptedIllustrator_declareFunctions_markup_terminal() {
	true
	
	type _declareFunctions_markup_terminal > /dev/null 2>&1 && _declareFunctions_markup_terminal "$@"
}
