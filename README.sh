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
_t 'Copyright (C) 2021 mirage335
See the end of the file for license conditions.
See license.txt for scriptedIllustrator license conditions.

A &#39;UNIX TiddlyWiki&#39; . A &#39;LibreOffice&#39; or &#39;MSOffice&#39; for programmers. A word processor for wiki, shell, bash, or TI calculator users.


Self-modifying mix of shellcode script and markup. Users need not understand the code to edit the text.

'
_paragraph_begin
_o _messagePlain_probe "./scriptedIllustrator.html -> equations and commands-> , scriptedIllustrator.html , scriptedIllustrator.pdf , scriptedIllustrator.md , etc -> edit &#39;scriptIllustrator.html&#39; again and again"
_paragraph_end
_paragraph_begin
_t 'Intended to assist quickly or colloboratively embedding dynamic external data (ie. calculations, source code analysis, web sites, images, etc) within documentation. MediaWiki users in particular may simply edit text and post the markup file - only the intended text will be visible while the interleaved code remains executable and commented out from the markup. 

Markup files of many markup launguages (eg. HTML, MediaWiki, markdown) are executable, automatically convertable, all having functionally identical shell code (eg. HTML and MediaWiki compatible files are capable of identical output).

Conversion to &#39;LibreOffice&#39; &#39;docx&#39; or &#39;odt&#39; is best achieved by copy/paste from a web browser.

Automatic conversion to &#39;asciidoc&#39; is available, however, that format seems to have relatively limited functionality. Automatic conversion to &#39;LibreOffice&#39; is technically possible, however, copy/paste from a web browser viewing HTML markup achieves more accurate results with much more functionality.'
_paragraph_end
_heading1 'Examples'
_t 'This README itself is an example. PDF render of HTML is most accurate.
https://github.com/mirage335/scriptedIllustrator/blob/main/README.pdf'
_t '



'
_heading1 'Usage'
_paragraph_begin
_o _messagePlain_probe_noindent './scriptedIllustrator.sh _README
./compile.sh ; ./scriptedIllustrator.sh _experiment

./scriptedIllustrator.sh _scribble_html
./scriptedIllustrator.html _scribble_html

# By default, &#39;'scribble'&#39; all possible markup .
./scriptedIllustrator.sh
./scriptedIllustrator.html
./scriptedIllustrator.mediawiki.txt'
_paragraph_end
_paragraph_begin
_t '"KWrite" is strongly recommended. Syntax highlighting of &#39;# NOTICE&#39; is helpful . Syntax highlighting may be either &#39;bash&#39; or markup at any time as desired.'
_paragraph_end
_t '


'
_page
_heading1 'Design'
_paragraph_begin
_t 'Conversion between scripting/markup launguages must not cause any differences, as these will accumulate in practice. MSW/Cygwin compatible.

Automatic &#39;_test&#39; function attempts some plausible conversions to ensure unexpected differences do not occur.'
_paragraph_end
_paragraph_begin
_o _messagePlain_probe_noindent './scriptedIllustrator.sh _test
./scriptedIllustrator.html _test

./compile.sh ; ./scriptedIllustrator.html _test ; ./scriptedIllustrator.mediawiki.txt'
_paragraph_end
_t '


'
_page
_heading1 'Safety'
_paragraph_begin
_t 'Most documentation scripts are expected compatible with Cloud services, or QEMU virtual machines (possibly without any hardware/accelerated virtualization). Users should be provided access to these, rather than running such documentation scripts directly.

Version control very strongly recommended. Obviously these scripts can self-overwrite (which is very often desirable), especially if editing markup files directly (which is when self-overwrite is most desirable for convenience).'
_paragraph_end
_t '


'
_page
_heading1 'Reference'
_paragraph_begin
_t '
https://unix.stackexchange.com/questions/533886/is-there-a-command-line-tool-for-converting-html-files-to-pdf
 &#39;pandoc&#39;
 &#39;htmldoc&#39;
 &#39;html2ps&#39;
 &#39;phantomjs&#39;


https://github.com/go-easygen/easygen
https://pkg.go.dev/github.com/go-easygen/easygen?utm_source=godoc#pkg-examples
https://github.com/imatix/gsl


https://en.wikipedia.org/wiki/AsciiDoc
https://github.com/dagwieers/asciidoc-odf
https://powerman.name/doc/asciidoc
https://docs.asciidoctor.org/asciidoc/latest/comments/
'
_paragraph_end
_t '


'
_page
_heading1 'Copyright'
_paragraph_begin
_t '
This file is part of scriptedIllustrator.

scriptedIllustrator is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

scriptedIllustrator is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with scriptedIllustrator.  If not, see &lt;http://www.gnu.org/licenses/&gt;.
'
_paragraph_end
_t '


'
_page
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_t 'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak'
_paragraph_begin
_t '
PAGE INTENTIONALLY BLANK
'
_paragraph_end
_t 'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak'
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_ __________________________________________________________________________________________
_page
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
current_internal_CompressedFunctions_bytes='11240'
current_internal_CompressedFunctions_cksum='1475863274'
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
	local current_deleteScriptLocal
	current_deleteScriptLocal="false"
	[[ ! -e "$scriptLocal" ]] && current_deleteScriptLocal="true"
	
	_scribble_markdown "$@"
	_scribble_html "$@"
	_scribble_pdf "$@"
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation" | sed 's/\.[^.]*$//')
	"$scriptAbsoluteFolder"/"$currentScriptBasename".html _test
	
	[[ "$current_deleteScriptLocal" == "true" ]] && rmdir "$scriptLocal"
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


