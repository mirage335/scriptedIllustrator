#####Program
# WARNING: Defining functions with the usual '_main', '_collect', '_enter', '_launch', etc, names, may conflict with or be overloaded by the same function definitions in 'tinyCompiler'.

# Equivalent to '_main', with the usual '_collect' (aka. '_gather'), '_enter', '_launch', etc.
_default() {
	
	
	_scribble_html "$@"
	
	
	
	
	
	
	
	
	
	return;
	
	# TODO: Should output something close to what 'DOCUMENT' would look like originally - just the function calls - before lots of 'hidden' comment strings and such.
	# ATTENTION: Might be the same as (ie. synonymous with) 'terminal' .
	export current_scriptedIllustrator_markup='editable'
	
	# TODO: Extra '#' and similar shell characters deleted. Most likely used to convert to PDF (deleting or not keeping any temporary intermediate HTML file to prevent misuse).
	export current_scriptedIllustrator_markup='presentation'
	
	
	
	export current_scriptedIllustrator_markup='mediawiki'
	
	
	export current_scriptedIllustrator_markup='terminal'
	
	export current_scriptedIllustrator_markup='python_docx'
}


