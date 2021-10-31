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
_heading1 'document - heading1'
_o _messageNormal 'demo: self-modifying interleaved markup and shell'
_heading2 'date - heading2'
_paragraph_begin
_o _messagePlain_request "request: date --iso-8601=ns"
_o _messagePlain_probe date --iso-8601
_e_ '[[ "$noDate" != "true" ]] && date --iso-8601'
_paragraph_end
_heading2 'images - heading2'
_paragraph_begin
_t 'preformatted text within paragraph'
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_picture "zPicture_BusinessCard_mirage335_wood.png" 100px
_paragraph_end
_paragraph_begin
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_image "zImage_cabling_2020-11-19-03-19-082.jpg" 150px
_paragraph_end
_heading2 'equations and commands - heading2'
_paragraph_begin
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
_paragraph_end
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
_paragraph_begin
_e_ ubiquitous_bash.sh _echo 'a b'
_paragraph_end
_e ubiquitous_bash.sh _echo 'a
b'
_paragraph_begin [
_o _safeEcho_newline 'output
	tab
output'
_paragraph_end ]
_paragraph_begin [
_ WARNING: Some 'quoting' may not be preserved .
_ _o _safeEcho_newline "'"' \ \\  output'"'"
_o _safeEcho_newline "'"' \ \\  output'"'"
_o _safeEcho_newline ']
\#'
_paragraph_end ]
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
_t ' preformatted text at paragraph_begin'
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
current_internal_CompressedFunctions_bytes='11204'
current_internal_CompressedFunctions_cksum='1028222074'
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


