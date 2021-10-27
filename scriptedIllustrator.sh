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
_image "zImage_cabling_2020-11-19-03-19-082.jpg" 50px
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
_t 'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
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
_ ATTENTION: Single quotes may be represented by known alternative markup if necessary - ' \x27 \047 %27 &#92; ' .
_t '\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" \x27 \047 %27 &#39;'
_r '\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" \x27 \047 %27 &#39;'
_paragraph_end
_t 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
_t '

'
_cells_begin
_cells_row_begin
_cells_speck_begin
_cells_speck_end
_cells_speck_begin
_cells_speck_end
_cells_speck_begin
_cells_speck_end
_cells_speck_begin
_cells_speck_end
_cells_speck_begin
_cells_speck_end
_cells_row_end
_cells_row_begin
_cells_speck_begin
_cells_speck_end
_cells_speck_begin
_cells_speck_end
_cells_speck_begin
_cells_speck_end
_cells_speck_begin
_cells_speck_end
_cells_speck_begin
_cells_speck_end
_cells_row_end
_cells_end
_t '

'
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
current_internal_CompressedFunctions_bytes='10689'
current_internal_CompressedFunctions_cksum='2108187389'
current_internal_CompressedFunctions='
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
AgAAAAAEWVo='
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


