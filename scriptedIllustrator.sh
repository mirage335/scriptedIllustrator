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
current_internal_CompressedFunctions_bytes='11123'
current_internal_CompressedFunctions_cksum='2026533035'
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


