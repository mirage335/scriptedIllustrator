#!/usr/bin/env bash

# Dependencies.
# Must have 'ubiquitous_bash.sh" in "$PATH".
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
_image "zImage_cabling__2020-11-19-03-19-082.jpg" 200px
_paragraph_end
_heading2 'equations - heading2'
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
_heading2 'commands - heading2'
_paragraph_begin
_e_ ubiquitous_bash.sh _echo 'a b'
_paragraph_end
_paragraph_begin
_e _color_demo
_paragraph_end
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
_o _messagePlain_probe_var ubiquitiousBashIDshort
_v ubiquitiousBashIDshort
_v RECODE_markup_html_pre_begin
_
_
_t 'preformatted
text'
_t '#
# ###
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
"$ubiquitiousBashIDshort"


'
_paragraph_begin
_e ubiquitous_bash.sh _echo 'a
b'
_paragraph_end
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
current_internal_CompressedFunctions_bytes='7271'
current_internal_CompressedFunctions_cksum='2805205235'
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
[[ "$ubiquitiousBashID" != "uk4uPhB663kVcygT0q" ]] && exit 1
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


