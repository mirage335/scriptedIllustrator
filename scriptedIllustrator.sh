#!/usr/bin/env bash

# Dependencies.
# May need 'ubiquitous_bash.sh" in "$PATH".
# GNU Octave, Qalculate - usually dependency of 'calculator' scripts
# recode - usually dependency of 'markup documentation' scripts
# wkhtmltopdf - may be necessary for accurate conversion from HTML to PDF

# NOTICE: README !
# 
# 
# 
# NOTICE: README !

# CAUTION: As a user, you should have been provided a virtual machine or cloud services to run this script - 'ubiquitous bash' provides functions to ease the use of either and both. An SELinux, AppArmor, unprivileged ChRoot, or similar context may be acceptable as well. Routinely modifying, sharing, and running code, may otherwise put both users and organizations at possibly unnecessary risk.


# Copyright and related rights only waived via CC0 if all specified conditions are met.
# *) EITHER, a single file directly output from 'scriptedIllustrator' (which is GPLv3 licensed), OR, not otherwise claimed under other any copyright license.
# *) Is a documentation script including this message which also predominantly creates or represents markup (eg. 'scriptedIllustrator.sh', 'scriptedIllustrator.html', 'scriptedIllustrator.mediawiki.txt').
# *) NOT part of a program to compress, embed, and assemble, functions and other code (waiver does NOT apply to 'tinyCompiler_scriptedIllustrator.sh' ).

# To the extent possible, related software (ie. 'tinyCompiler_scriptedIllustrator.sh' from 'scriptedIllustrator') remains otherwise copyrighted (ie. GPLv3 license).
# Specifically, please do not use 'scriptedIllustrator' code to distribute unpublished proprietary means of creating 'current_internal_CompressedFunctions' .
# Specifically, please do not misconstrue this copyright waiver to negate any copyright claimed when such a documentation script is part of another project or another copyright notice is present (ie. 'otherwise claimed').

# 'For the avoidance of doubt, any information that you choose to store within your own copy' ... 'remains yours' ... 'using' ... 'to publish content doesn't change whatever rights you may have to that content.'
# Although this project has no relation to TiddlyWiki, as stated above, vaguely similar copyright principles are expected to apply. - https://tiddlywiki.com/static/License.html

#__README_uk4uPhB663kVcygT0q_README__


_document_collect() {
# NOTICE: COLLECT

# Not necessary. Warnings about 'command not found' to 'stderr' will be ignored by script pipelines.
#! type -p 'recode' > /dev/null 2>&1 && recode() { false; }


currentByte=8

RECODE_markup_html_pre_begin=$(_safeEcho "$markup_html_pre_begin" | recode ascii..html)


export current_lorem_ipsum='Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'


# NOTICE: COLLECT
}



_document_main() {
#a
#b
# NOTICE: DOCUMENT
#__HEADER_uk4uPhB663kVcygT0q_HEADER__
_
_ '


'
_o _messageNormal 'demo: self-modifying interleaved markup and shell'
_heading1 'document - heading1'
_heading2 'date - heading2'
_o _messagePlain_request "request: date --iso-8601=ns"
_o _messagePlain_probe date --iso-8601
_e_ '[[ "$noDate" != "true" ]] && date --iso-8601'
_heading2 'images - heading2'
_paragraph_begin
_t 'preformatted text within paragraph'
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_picture "zPicture_BusinessCard_mirage335_wood.png" 100px
_paragraph_end
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_image "zImage_cabling_2020-11-19-03-19-082.jpg" 150px
_heading2 'equations and commands - heading2'
_e_ currentBitsPerSecond=9600
_e_ currentBonesPerPlayer=4
_i currentIncrementFramesPerSecond=15
_i currentIncrementFrameBytesPerBone=2
_i currentInstantFramesPerSecond=2
_i currentInstantFrameBytesPerBone=12
_
_h '
# Severely degraded and highly compressed connection between just two players.
_e currentBitsPerSecond=9600 ; currentBonesPerPlayer=4 ; currentIncrementFramesPerSecond=15 ; currentIncrementFrameBytesPerBone=2 ; currentInstantFramesPerSecond=2 ; currentInstantFrameBytesPerBone=12 ; currentByte=8 ; solve "("$currentBitsPerSecond" == (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentIncrementFramesPerSecond" * "$currentIncrementFrameBytesPerBone" * "$currentByte") + (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentInstantFramesPerSecond" * "$currentInstantFrameBytesPerBone" * "$currentByte"), \"currentPlayers\")"
# # solve(9600 = (("currentPlayers" * 4 * 30 * 2 * 8) + ("currentPlayers" * 4 * 3 * 33 * 8)), "currentPlayers") =
# # 5.5555556'
_e_ solve '"("$currentBitsPerSecond" == (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentIncrementFramesPerSecond" * "$currentIncrementFrameBytesPerBone" * "$currentByte") + (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentInstantFramesPerSecond" * "$currentInstantFrameBytesPerBone" * "$currentByte"), \"currentPlayers\")"'
_t ' '
_
_
_ complicated tables may cause problems for some markup
_markup_asciidoc_disable_begin
_cells_begin
_
_cells_row_begin
_cells_speck_begin '125px'
_t '*titleA*'
_cells_speck_end
_cells_speck_begin
_ CAUTION: Text formatting *intentionally* not compatible with all markup and not recommended unless strictly necessary for presentation HTML documents!
_ WARNING: Stay with 'plain text' whenever possible!
_t '<span style="font-weight:bold;font-style: italic;">*titleB*</span>'
_cells_speck_end
_cells_speck_begin
_t '*titleC*'
_cells_speck_end
_cells_speck_begin
_t '  *titleD*  '
_cells_speck_end
_cells_row_end
_
_cells_row_begin
_
_cells_speck_begin
_t 'example'
_paragraph_begin
_o _messagePlain_probe 'commands'
_o _safeEcho_newline '# with output'
_paragraph_end
_cells_speck_end
_
_cells_speck_begin
_paragraph_begin [
_e_ ubiquitous_bash.sh _echo 'a b'
_e ubiquitous_bash.sh _echo 'a
b'
_paragraph_end ]
_o _safeEcho_newline 'output
	tab
output'
_ WARNING: Some 'quoting' may not be preserved .
_ _o _safeEcho_newline "'"' \ \\  output'"'"
_o _safeEcho_newline "'"' \ \\  output'"'"
_o _safeEcho_newline ']
\#'
_cells_speck_end
_
_cells_speck_begin
_e _color_demo
_cells_speck_end
_
_cells_row_end
_
_
_cells_row_begin
_cells_speck_begin
_o _safeEcho_newline 'output'
_cells_speck_end
_cells_speck_begin '' '2'
_r ' raw markup'
_cells_speck_end
_cells_speck_begin '' '2'
_t ' pre'
_cells_speck_end
_cells_row_end
_
_cells_row_begin
_cells_speck_begin
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_picture "zPicture_BusinessCard_mirage335_wood.png" 50px
_cells_speck_end
_cells_speck_begin '' '3'
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_image "zImage_cabling_2020-11-19-03-19-082.jpg" 50px
_cells_speck_end
_cells_end
_markup_asciidoc_disable_end
_
_heading2 'breaks - heading2'
_paragraph_begin
_t '

'
_t '


preformatted text at paragraph_end'
_paragraph_end
_
_
_
_page
_t 'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
'
_o _messagePlain_request 'request: maybe the user should copy some file next to the "$scriptAbsoluteFolder"'
_o_ _messagePlain_request 'request: maybe the user should copy some file next to the \"\$scriptAbsoluteFolder\"'
_o _messagePlain_probe_var ubiquitousBashIDshort
_v ubiquitousBashIDshort
_v RECODE_markup_html_pre_begin
_
_
_t 'preformatted
 text
more
 preformatted
text'
_t '#
# ###
&#35; &#35;&#35;&#35;
'
_heading1 'heading1'
_heading2 'heading2'
_heading3 'heading3'
_heading4 'heading4'
_heading5 'heading5'
_heading6 'heading6'
_t '#
'
_r 'raw markup<br \><h1>raw heading1</h2>
<h2>raw heading2</h2>
raw markup 
raw markup
<p>raw paragraph</p>
raw markup'
_r '
raw markup'
_r 'raw markup
'
_r '
raw markup
'
_r '

raw markup

'
_paragraph_begin
_r '<span style="color:#1818b2;background-color:#848484;"> raw HTML markup within paragraph</span>'
_paragraph_end
_t '
preformatted
text'
_t '


preformatted
text
"$ubiquitousBashIDshort"


'
_t ''
_t '
'
_t '

'
_t '


'
_t '



'
_v current_lorem_ipsum
_ 'blank preformatted text will be ignored - at least add an empty space character'
_t ''
_ ATTENTION: Some characters may be represented by known alternative markup if necessary - eg. ' \x27 \047 %27 &#39; ' .
_t 'x > /dev/null < /dev/null &lt;/dev/null> &lt;h://w.example.com/page/&gt;
'
_o _safeEcho_newline 'x > /dev/null < /dev/null &lt;/dev/null> &lt;h://w.example.com/page/&gt;
'
_o_ _safeEcho_newline 'x \> /dev/null
'
_
_
_
_page
_t 'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
'
_paragraph_begin
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_image "zImage_cabling_2020-11-19-03-19-082.jpg"
_paragraph_end
_paragraph_begin
_ CAUTION: Unmatched single quotes may cause failure.
_ WARNING: Some 'quoting' may not be preserved .
_ ATTENTION: Single quotes may be represented by known alternative markup if necessary - ' \x27 \047 %27 &#39; ' .
_t '\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" \x27 \047 %27 &#39;'
_r '\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" \x27 \047 %27 &#39;'
_paragraph_end
_t 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
_paragraph_begin
_t '
'
_cells_begin
_cells_row_begin
_cells_speck_begin
_r '1'
_cells_speck_end
_cells_speck_begin
_r '2'
_cells_speck_end
_cells_speck_begin
_r '3'
_cells_speck_end
_cells_speck_begin
_r '4'
_cells_speck_end
_cells_speck_begin
_r '5'
_cells_speck_end
_cells_row_end
_cells_row_begin
_cells_speck_begin
_r '6'
_cells_speck_end
_cells_speck_begin
_r '7'
_cells_speck_end
_cells_speck_begin
_r '8'
_cells_speck_end
_cells_speck_begin
_r '9'
_cells_speck_end
_cells_speck_begin
_r '0'
_cells_speck_end
_cells_row_end
_cells_end
_t '
'
_paragraph_end
_o _messagePlain_good 'done: demo'
#__FOOTER_uk4uPhB663kVcygT0q_FOOTER__
# NOTICE: DOCUMENT
#y
#z
echo -e '\n\n'
}



# NOTICE: Overrides - new functions .


# NOTICE: Overrides - new functions .


#####Functions. Some may be from 'ubiquitous bash' .
#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions
current_internal_CompressedFunctions_bytes='11236'
current_internal_CompressedFunctions_cksum='921340258'
current_internal_CompressedFunctions='
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'
! echo "$current_internal_CompressedFunctions" | base64 -d | xz -d > /dev/null && exit 1
source <( echo "$current_internal_CompressedFunctions" | base64 -d | xz -d )
unset current_internal_CompressedFunctions ; unset current_internal_CompressedFunctions_cksum ; unset current_internal_CompressedFunctions_bytes
# https://github.com/mirage335/scriptedIllustrator
#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions
! _tiny_criticalDep && exit 1

# Special Global Variables
_tiny_set_strings


#####Import ( 'ubiquitous bash' ) .
# WARNING: Do NOT invoke complicated 'ubiquitous bash' functions directly (ie. call "ubiquitous_bash.sh" as a binary from PATH instead) .
# WARNING: If '--call' parameter is changed, 'trap' conflict may occur in some functions (ie. ( '_test_default' ) .
# Keeps "$scriptAbsoluteLocation" pointing to this script file (not 'ubiquitous_bash.sh' ), intentionally.
# Import of 'ubiquitous_bash.sh' intended ONLY to provide most recent 'message' and similar functions.
#_messagePlain_probe() { return; }
! type -p "ubiquitous_bash.sh" > /dev/null 2>&1 && exit 1
[[ "$ubiquitousBashID" != "uk4uPhB663kVcygT0q" ]] && exit 1
current_script_path=$(type -p "ubiquitous_bash.sh")
[[ ! -e "$current_script_path" ]] && exit 1
! ls -l "$current_script_path" 2>/dev/null | grep 'ubiquitous_bash.sh$' > /dev/null 2>&1 && exit 1
export importScriptLocation=$(_getScriptAbsoluteLocation)
export importScriptFolder=$(_getScriptAbsoluteFolder)
. "$current_script_path" --call
unset current_script_path
#_messagePlain_probe "$scriptAbsoluteLocation"
#exit 0



#a
#b
#c
#__HEADER-scriptCode_uk4uPhB663kVcygT0q_HEADER-scriptCode__
#1
#2
#3



#8
#9
#0
#__FOOTER-scriptCode_uk4uPhB663kVcygT0q_FOOTER-scriptCode__
#x
#y
#z

# NOTICE: Overrides ( 'ops.sh' equivalent ).


# NOTICE: Overrides ( 'ops.sh' equivalent ).


_test() {
	"$scriptAbsoluteLocation" _test_default "$@"
}

if ! [[ "$1" == '_'* ]] && [[ "$1" == 'DOCUMENT' ]]
then
	_document_collect
	_document_main
fi

! [[ "$1" == '_'* ]] && [[ "$1" == 'DOCUMENT' ]] && exit 0
if [[ "$1" == '_'* ]]
then
	"$@"
	exit "$?"
fi



_default "$@"






exit 0
# Append base64 encoded attachment file here.
__ATTACHMENT_uk4uPhB663kVcygT0q_ATTACHMENT__


