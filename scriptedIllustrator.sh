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
current_internal_CompressedFunctions_bytes='11188'
current_internal_CompressedFunctions_cksum='2481604017'
current_internal_CompressedFunctions='
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
FK9fdRgAAepAyZUGAGHIvoqxxGf7AgAAAAAEWVo='
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


