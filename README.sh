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
_o _messagePlain_probe './scriptedIllustrator.sh _README
./compile.sh ; ./scriptedIllustrator.sh _experiment

./scriptedIllustrator.sh _scribble_html
./scriptedIllustrator.html _scribble_html

# By default, 'scribble' all possible markup .
./scriptedIllustrator.sh
./scriptedIllustrator.html
./scriptedIllustrator.mediawiki.txt'
_paragraph_end
_paragraph_begin
_t '"KWrite" is strongly recommended. Syntax highlighting of &#39# NOTICE&#39 is helpful . Syntax highlighting may be either &#39bash&#39 or markup at any time as desired.'
_paragraph_end
_t '


'
_page
_heading1 'Design'
_paragraph_begin
_t 'Conversion between scripting/markup launguages must not cause any differences, as these will accumulate in practice. MSW/Cygwin compatible.

Automatic &#39_test&#39 function attempts some plausible conversions to ensure unexpected differences do not occur.'
_paragraph_end
_paragraph_begin
_o _messagePlain_probe './scriptedIllustrator.sh _test
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
 &#39pandoc&#39
 &#39htmldoc&#39
 &#39html2ps&#39
 &#39phantomjs&#39


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
current_internal_CompressedFunctions_bytes='11160'
current_internal_CompressedFunctions_cksum='3311445181'
current_internal_CompressedFunctions='
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
+wIAAAAABFla'
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
	
	"$scriptAbsoluteFolder"/README.html _test
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


