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
_t 'Copyright (C) 2021- mirage335
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
./scriptedIllustrator.mediawiki.txt

# Other markup formats available.
# Notable &#39;terminal&#39; markup for readability (colors, headings, etc) and quick experimentation from command line.
./README.sh DOCUMENT > ./README.sh.out.txt
less -R ./README.sh.out.txt
'
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
_cells_speck_begin '100%'
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
current_internal_CompressedFunctions_bytes="12593"
current_internal_CompressedFunctions_cksum="692762327"
current_internal_CompressedFunctions="
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
AAGCSfeTBwBG5WtuscRn+wIAAAAABFla"
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
	
	"$scriptAbsoluteLocation" DOCUMENT > "$scriptAbsoluteLocation".out.txt
	
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


