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
_o _messageNormal 'demo: self-modifying interleaved markup and shell'
_heading1 'document - heading1'
_heading2 'date - heading2'
_o _messagePlain_request "request: date --iso-8601=ns"
_o _messagePlain_probe date --iso-8601
_e_ '[[ "$noDate" != "true" ]] && date --iso-8601'
_heading2 'images - heading2'
_paragraph_begin
_t 'preformatted text within paragraph'
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_picture "zPicture_BusinessCard_mirage335_wood.png" 100px
_paragraph_end
_ Recommend ' $(_uid)_12345678.123 ' or similar filename. Uniqueness and absence of subdirectories may be desirable.
_ Citation of external source, specification of copyright license, may be desirable to add as a comment or visible text.
_image "zImage_cabling_2020-11-19-03-19-082.jpg" 150px
_heading2 'equations and commands - heading2'
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
_t ' '
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
_o _safeEcho_newline '# with output'
_paragraph_end
_cells_speck_end
_
_cells_speck_begin
_paragraph_begin [
_e_ ubiquitous_bash.sh _echo 'a b'
_e ubiquitous_bash.sh _echo 'a
b'
_paragraph_end ]
_o _safeEcho_newline 'output
	tab
output'
_ WARNING: Some 'quoting' may not be preserved .
_ _o _safeEcho_newline "'"' \ \\  output'"'"
_o _safeEcho_newline "'"' \ \\  output'"'"
_o _safeEcho_newline ']
\#'
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
current_internal_CompressedFunctions_bytes='11232'
current_internal_CompressedFunctions_cksum='3696198239'
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


