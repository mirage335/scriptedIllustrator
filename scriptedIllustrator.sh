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

# Copyright and related rights waived via CC0 .
# Compressed functions from 'scriptedIllustrator' may remain GPLv3 copyrighted .

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
_ CAUTION: Text formatting *intentionally* not compatible with all markup and not recommended unless strictly necessary for presentation HTML/MediaWiki documents!
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
current_internal_CompressedFunctions_bytes='8857'
current_internal_CompressedFunctions_cksum='3556110051'
current_internal_CompressedFunctions='
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'
! echo "$current_internal_CompressedFunctions" | base64 -d | xz -d > /dev/null && exit 1
source <( echo "$current_internal_CompressedFunctions" | base64 -d | xz -d )
unset current_internal_CompressedFunctions ; unset current_internal_CompressedFunctions_cksum ; unset current_internal_CompressedFunctions_bytes
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


