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


# Copyright and related rights waived via CC0 only for documentation scripts which predominantly create or represent markup (eg. 'scriptedIllustrator.sh', 'scriptedIllustrator.html', 'scriptedIllustrator.mediawiki.txt') .
# To the extent possible, related software (ie. 'tinyCompiler_scriptedIllustrator.sh' from 'scriptedIllustrator') remains otherwise copyrighted (ie. GPLv3 license).
# Specifically, please do not use 'scriptedIllustrator' code to distribute unpublished proprietary 'current_internal_CompressedFunctions' .

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
_picture "zPicture_BusinessCard_mirage335_wood.png" 100px
_paragraph_end
_paragraph_begin
_image "zImage_cabling__2020-11-19-03-19-082.jpg" 150px
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
_o _safeEcho_newline '\# with output'
_paragraph_end
_cells_speck_end
_
_cells_speck_begin
_paragraph_begin
_e_ ubiquitous_bash.sh _echo 'a b'
_paragraph_end
_e ubiquitous_bash.sh _echo 'a
b'
_paragraph_begin
_ WARNING: Some 'quoting' may not be preserved .
_ _o _safeEcho_newline "'"' \ \\  output'"'"
_o _safeEcho_newline "'"' \ \\  output'"'"
_paragraph_end
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
_picture "zPicture_BusinessCard_mirage335_wood.png" 50px
_cells_speck_end
_cells_speck_begin '' '3'
_image "zImage_cabling__2020-11-19-03-19-082.jpg" 50px
_cells_speck_end
_cells_end
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
_t '-------------------------------------------------------------------------------
'
_o _messagePlain_request 'request: maybe the user should copy some file next to the \"\$scriptAbsoluteFolder\"'
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
_t 'x > /dev/null'
_
_
_
_page
_t '-------------------------------------------------------------------------------
'
_paragraph_begin
_image "zImage_cabling__2020-11-19-03-19-082.jpg"
_paragraph_end
_paragraph_begin
_ WARNING: Unmatched single quotes may cause failure.
_t '\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} '"''"' " "" '
_r '\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} '"''"' " "" '
_paragraph_end
_t 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
_o _messagePlain_good 'done: demo'
#__FOOTER_uk4uPhB663kVcygT0q_FOOTER__
# NOTICE: DOCUMENT
#y
#z
echo -e '\n\n'
}



# NOTICE: Overrides ( 'ops.sh' equivalent).


# NOTICE: Overrides ( 'ops.sh' equivalent).


#####Functions. Some may be from 'ubiquitous bash' .
#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions
current_internal_CompressedFunctions_bytes='9094'
current_internal_CompressedFunctions_cksum='2307352010'
current_internal_CompressedFunctions='
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'
! echo "$current_internal_CompressedFunctions" | base64 -d | xz -d > /dev/null && exit 1
source <( echo "$current_internal_CompressedFunctions" | base64 -d | xz -d )
unset current_internal_CompressedFunctions ; unset current_internal_CompressedFunctions_cksum ; unset current_internal_CompressedFunctions_bytes
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


