
# TODO: Move from 'wip_functions.sh' .
# TODO: Shell code as markup. When used by other markup, this is to prevent shell interpretation of markup. When creating a new file, only 'scribble' the shell code - resulting in a 'simplified', 'editable' shell script.
# To 'scribble' just the shell code, just use the grep 'filter'.


_set_strings_markup_shell() {
	export flag__NOT_shell='scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	
	export comment_shell_line='#'
	[[ "$workaround_comment_shell_line" != "" ]] && export comment_shell_line="$workaround_comment_shell_line"
	
	# DANGER: CAUTION: Creates a temporary 'here document'. Compatibility problems (ie. MSW/Cygwin) are possible.
	#export comment_shell_begin=": <<'ey5QoR_""'"" $comment_shell_line"
	#export comment_shell_end="ey5QoR_"
	
	# WARNING: Markup files requiring workaround will be more difficult to read/edit directly (ie. adding '<!-- # --> ' or similar to every line to prevent interpretation of '>' as a redirect character even within an 'if false' 'block comment'.
	export comment_shell_begin='if false; then true; '"$comment_shell_line"
	export comment_shell_end='fi'
	export workaround_shellPrependMarkupLines=""
	[[ "$current_scriptedIllustrator_markup" == 'html' ]] && export workaround_shellPrependMarkupLines='<!-- # -->'
	[[ "$current_scriptedIllustrator_markup" == 'mediawiki' ]] && export workaround_shellPrependMarkupLines='<!-- # -->'
}

# WARNING: Affects accurate prevention of '_r' and '_t' inaccurately accumulating or removing newlines.
_filter__scriptedIllustrator_markup() {
	# Inherently add newline if not already present.
	grep -v "$flag__NOT_shell"
	
	# Add newline if already present.
	#grep -v $(_uid) | grep -v "$flag__NOT_shell"
	
	# Do not add newline if not already present.
	#sed 's/^.*'"$flag__NOT_shell"'.*$//g'
}







_shellCommentLines() {
	local currentString
	
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$comment_shell_line $currentString"
		echo
	done
	
	#echo -n "$comment_shell_line"' '
	##LANG=C IFS=
	#while LANG=C IFS= read -r -d '' -n 1 currentString
	#do
		#[ "$currentString" ] && printf '%b' "$currentString"
		#[[ "$currentString" == $'\n' ]] && echo -n "$comment_shell_line"' '
	#done
}

_workaround_shellPrependMarkupLines() {
	local currentString
	
	#while read -r currentString
	#do
		#[ "$currentString" ] && printf '%b' "$workaround_shellPrependMarkupLines""$currentString"
		#echo
	#done
	
	#echo -n "$workaround_shellPrependMarkupLines"
	#LANG=C IFS=
	#while LANG=C IFS= read -r -d '' -n 1 currentString
	#do
		#[ "$currentString" ] && printf '%b' "$currentString"
		#[[ "$currentString" == $'\n' ]] && echo -n "$workaround_shellPrependMarkupLines"
	#done
	
	sed 's/^/'"$workaround_shellPrependMarkupLines"'/g'
}



_tinyCompiler_scriptedIllustrator_declareFunctions_markup_shell() {
	declare -f _set_strings_markup_shell
	
	declare -f _filter__scriptedIllustrator_markup
	
	declare -f _shellCommentLines
	declare -f _workaround_shellPrependMarkupLines
}

