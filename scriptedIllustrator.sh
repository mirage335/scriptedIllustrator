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
_heading2 'images and tables - heading2'
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
current_internal_CompressedFunctions_bytes='10914'
current_internal_CompressedFunctions_cksum='244171092'
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


