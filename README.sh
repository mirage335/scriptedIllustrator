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
current_internal_CompressedFunctions_bytes='11236'
current_internal_CompressedFunctions_cksum='1609716532'
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


