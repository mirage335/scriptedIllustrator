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
current_internal_CompressedFunctions_bytes='10548'
current_internal_CompressedFunctions_cksum='4064387576'
current_internal_CompressedFunctions='
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
PY/2BQCtUwYMscRn+wIAAAAABFla'
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


