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
current_internal_CompressedFunctions_bytes='10918'
current_internal_CompressedFunctions_cksum='1511978938'
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

_default() {
	_scribble_markdown "$@"
	_scribble_html "$@"
	_scribble_pdf "$@"
}


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


