#####Program
# WARNING: Defining functions with the usual '_main', '_collect', '_enter', '_launch', etc, names, may conflict with or be overloaded by the same function definitions in 'tinyCompiler'.

# Equivalent to '_main', with the usual '_collect' (aka. '_gather'), '_enter', '_launch', etc.
_default() {
	_scribble_html "$@"
	_scribble_html_presentation "$@"
	
	_scribble_pdf "$@"
	
	# ###
	
	
	
	_scribble_mediawiki "$@"
	
	return;
}


