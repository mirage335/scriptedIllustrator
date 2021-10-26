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
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_picture "zPicture_BusinessCard_mirage335_wood.png" 100px
_paragraph_end
_paragraph_begin
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
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
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_picture "zPicture_BusinessCard_mirage335_wood.png" 50px
_cells_speck_end
_cells_speck_begin '' '3'
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
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
_t 'x > /dev/null'
_
_
_
_page
_t '-------------------------------------------------------------------------------
'
_paragraph_begin
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_image "zImage_cabling__2020-11-19-03-19-082.jpg"
_paragraph_end
_paragraph_begin
_ CAUTION: Unmatched single quotes may cause failure.
_ WARNING: Some 'quoting' may not be preserved .
_ ATTENTION: Single quotes may be represented by known alternative markup if necessary - ' \x27 \047 %27 &#92; ' .
_t '\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" \x27 \047 %27 &#39;'
_r '\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" \x27 \047 %27 &#39;'
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
current_internal_CompressedFunctions_bytes='10431'
current_internal_CompressedFunctions_cksum='753797193'
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


