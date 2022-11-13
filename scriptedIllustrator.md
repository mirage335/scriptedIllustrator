<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q 
#exit # scriptedIllustrator_markup_uk4uPhB663kVcygT0q 
# <html style="size: letter;"> <!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
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
 '_'
 '_' '


'
 '_o' '_messageNormal' 'demo: self-modifying interleaved markup and shell'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#54ff54;background-color:#18b2b2;"> demo: self-modifying interleaved markup and shell</span>
<!-- # --></pre>
<!--
fi
 '_heading1' 'document - heading1'
if false; then true; # -->
<!-- # --><h1>document - heading1</h1>
<!--
fi
 '_heading2' 'date - heading2'
if false; then true; # -->
<!-- # --><h2>date - heading2</h2>
<!--
fi
 '_o' '_messagePlain_request' 'request: date --iso-8601=ns'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#b218b2;background-color:#848484;"> request: date --iso-8601=ns</span>
<!-- # --></pre>
<!--
fi
 '_o' '_messagePlain_probe' 'date' '--iso-8601'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;"> date --iso-8601</span>
<!-- # --></pre>
<!--
fi
 '_e_' '[[ "$noDate" != "true" ]] && date --iso-8601'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;">  '[[ "$noDate" != "true" ]] && date --iso-8601'</span>
<!-- # --># 2022-11-13
<!-- # --></pre>
<!--
fi
 '_heading2' 'images - heading2'
if false; then true; # -->
<!-- # --><h2>images - heading2</h2>
<!--
fi
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
preformatted text within paragraph
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_' 'Recommend' ' $(_uid)_12345678.123 ' 'or' 'similar' 'filename.' 'Uniqueness' 'and' 'absence' 'of' 'subdirectories' 'may' 'be' 'desirable.'
 '_' 'Citation' 'of' 'external' 'source,' 'specification' 'of' 'copyright' 'license,' 'may' 'be' 'desirable' 'to' 'add' 'as' 'a' 'comment' 'or' 'visible' 'text.'
 '_picture' 'zPicture_BusinessCard_mirage335_wood.png' '100px'
if false; then true; # -->
<!-- # --><img width="100px" src="zPicture_BusinessCard_mirage335_wood.png" style="float: right;margin: 0 0 0 15px;border: 5px solid transparent;">
<!--
fi
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
<!--
fi
 '_' 'Recommend' ' $(_uid)_12345678.123 ' 'or' 'similar' 'filename.' 'Uniqueness' 'and' 'absence' 'of' 'subdirectories' 'may' 'be' 'desirable.'
 '_' 'Citation' 'of' 'external' 'source,' 'specification' 'of' 'copyright' 'license,' 'may' 'be' 'desirable' 'to' 'add' 'as' 'a' 'comment' 'or' 'visible' 'text.'
 '_image' 'zImage_cabling_2020-11-19-03-19-082.jpg' '150px'
if false; then true; # -->
<!-- # --><img width="150px" src="zImage_cabling_2020-11-19-03-19-082.jpg" style="margin: 0 0 0 15px;border: 5px solid transparent;">
<!--
fi
 '_heading2' 'equations and commands - heading2'
if false; then true; # -->
<!-- # --><h2>equations and commands - heading2</h2>
<!--
fi
 '_e_' 'currentBitsPerSecond=9600'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;">  'currentBitsPerSecond=9600'</span>
<!-- # --></pre>
<!--
fi
 '_e_' 'currentBonesPerPlayer=4'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;">  'currentBonesPerPlayer=4'</span>
<!-- # --></pre>
<!--
fi
 '_i' 'currentIncrementFramesPerSecond=15'
if false; then true; # -->
<!--
fi
 '_i' 'currentIncrementFrameBytesPerBone=2'
if false; then true; # -->
<!--
fi
 '_i' 'currentInstantFramesPerSecond=2'
if false; then true; # -->
<!--
fi
 '_i' 'currentInstantFrameBytesPerBone=12'
if false; then true; # -->
<!--
fi
 '_'
 '_h' '
# Severely degraded and highly compressed connection between just two players.
_e currentBitsPerSecond=9600 ; currentBonesPerPlayer=4 ; currentIncrementFramesPerSecond=15 ; currentIncrementFrameBytesPerBone=2 ; currentInstantFramesPerSecond=2 ; currentInstantFrameBytesPerBone=12 ; currentByte=8 ; solve "("$currentBitsPerSecond" == (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentIncrementFramesPerSecond" * "$currentIncrementFrameBytesPerBone" * "$currentByte") + (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentInstantFramesPerSecond" * "$currentInstantFrameBytesPerBone" * "$currentByte"), \"currentPlayers\")"
# # solve(9600 = (("currentPlayers" * 4 * 30 * 2 * 8) + ("currentPlayers" * 4 * 3 * 33 * 8)), "currentPlayers") =
# # 5.5555556'
 '_e_' 'solve' '"("$currentBitsPerSecond" == (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentIncrementFramesPerSecond" * "$currentIncrementFrameBytesPerBone" * "$currentByte") + (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentInstantFramesPerSecond" * "$currentInstantFrameBytesPerBone" * "$currentByte"), \"currentPlayers\")"'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;">  'solve' '"("$currentBitsPerSecond" == (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentIncrementFramesPerSecond" * "$currentIncrementFrameBytesPerBone" * "$currentByte") + (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentInstantFramesPerSecond" * "$currentInstantFrameBytesPerBone" * "$currentByte"), \"currentPlayers\")"'</span>
<!-- # --># 5.5555556
<!-- # --></pre>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;"> 
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_'
 '_'
 '_' 'complicated' 'tables' 'may' 'cause' 'problems' 'for' 'some' 'markup'
 '_markup_asciidoc_disable_begin'
 '_cells_begin'
if false; then true; # -->
<!-- # --><table width="0%" style="empty-cells: show; border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
 '_'
 '_cells_row_begin'
if false; then true; # -->
<!-- # --><tr>
<!--
fi
 '_cells_speck_begin' '125px'
if false; then true; # -->
<!-- # --><td width="125px" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
*titleA*
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
 '_' 'CAUTION:' 'Text' 'formatting' '*intentionally*' 'not' 'compatible' 'with' 'all' 'markup' 'and' 'not' 'recommended' 'unless' 'strictly' 'necessary' 'for' 'presentation' 'HTML' 'documents!'
 '_' 'WARNING:' 'Stay' 'with' 'plain text' 'whenever' 'possible!'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<span style="font-weight:bold;font-style: italic;">*titleB*</span>
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
*titleC*
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
  *titleD*  
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_row_end'
if false; then true; # -->
<!-- # --></tr>
<!--
fi
 '_'
 '_cells_row_begin'
if false; then true; # -->
<!-- # --><tr>
<!--
fi
 '_'
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
example
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
 '_o' '_messagePlain_probe' 'commands'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;"> commands</span>
<!-- # --></pre>
<!--
fi
 '_o' '_safeEcho_newline' '# with output'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --># with output
<!-- # --></pre>
<!--
fi
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
<!--
fi
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_'
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
 '_paragraph_begin' '['
if false; then true; # -->
<!-- # --><p>
<!--
fi
 '_e_' 'ubiquitous_bash.sh' '_echo' 'a b'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;">  'ubiquitous_bash.sh' '_echo' 'a b'</span>
<!-- # --># a b
<!-- # --></pre>
<!--
fi
 '_e' 'ubiquitous_bash.sh' '_echo' 'a
b'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;">  'ubiquitous_bash.sh' '_echo' 'a
<!-- # -->b'</span>
<!-- # --># a
<!-- # --># b
<!-- # --></pre>
<!--
fi
 '_paragraph_end' ']'
if false; then true; # -->
<!-- # --></p>
<!--
fi
 '_o' '_safeEcho_newline' 'output
	tab
output'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->output
<!-- # -->	tab
<!-- # -->output
<!-- # --></pre>
<!--
fi
 '_' 'WARNING:' 'Some' 'quoting' 'may' 'not' 'be' 'preserved' '.'
 '_' '_o' '_safeEcho_newline' '' \ \\  output''
 '_o' '_safeEcho_newline' '' \ \\  output''
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->' \ \\  output'
<!-- # --></pre>
<!--
fi
 '_o' '_safeEcho_newline' ']
\#'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->]
<!-- # -->\#
<!-- # --></pre>
<!--
fi
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_'
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
 '_e' '_color_demo'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;">  '_color_demo'</span>
<!-- # --># <span style="color:#b218b2;background-color:#848484;"> _color_demo</span>
<!-- # --># <span style="color:#18b2b2;background-color:#848484;"> _color_demo</span>
<!-- # --># <span style="color:#1818b2;background-color:#848484;"> _color_demo</span>
<!-- # --># <span style="color:#1818b2;background-color:#848484;"> _color_demo</span>
<!-- # --># <span style="color:#1818b2;background-color:#848484;"> ubiquitousBashIDshort= uk4uPhB6</span>
<!-- # --># <span style="color:#17ae17;background-color:#848484;"> _color_demo</span>
<!-- # --># <span style="color:#ffff54;background-color:#848484;"> _color_demo</span>
<!-- # --># <span style="color:#b21818;background-color:#848484;"> _color_demo</span>
<!-- # --># <span style="color:#1818b2;background-color:#848484;"> echo _color_demo</span>
<!-- # --># _color_demo
<!-- # --># <span style="color:#1818b2;background-color:#848484;">  "echo" "_color_demo"</span>
<!-- # --># <span style="color:#1818b2;background-color:#848484;">  'echo' '_color_demo'</span>
<!-- # --># <span style="color:#54ff54;background-color:#18b2b2;"> _color_demo</span>
<!-- # --># <span style="color:#ffff54;background-color:#b21818;"> _color_demo</span>
<!-- # --># <span style="color:#ffff54;background-color:#b2b2b2;"> delay: InterProcess-Communication</span>
<!-- # --></pre>
<!--
fi
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_'
 '_cells_row_end'
if false; then true; # -->
<!-- # --></tr>
<!--
fi
 '_'
 '_'
 '_cells_row_begin'
if false; then true; # -->
<!-- # --><tr>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
 '_o' '_safeEcho_newline' 'output'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->output
<!-- # --></pre>
<!--
fi
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin' '' '2'
if false; then true; # -->
<!-- # --><td width="0%" colspan="2" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
 raw markup
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin' '' '2'
if false; then true; # -->
<!-- # --><td width="0%" colspan="2" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
 pre
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_row_end'
if false; then true; # -->
<!-- # --></tr>
<!--
fi
 '_'
 '_cells_row_begin'
if false; then true; # -->
<!-- # --><tr>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
 '_' 'Recommend' ' $(_uid)_12345678.123 ' 'or' 'similar' 'filename.' 'Uniqueness' 'and' 'absence' 'of' 'subdirectories' 'may' 'be' 'desirable.'
 '_' 'Citation' 'of' 'external' 'source,' 'specification' 'of' 'copyright' 'license,' 'may' 'be' 'desirable' 'to' 'add' 'as' 'a' 'comment' 'or' 'visible' 'text.'
 '_picture' 'zPicture_BusinessCard_mirage335_wood.png' '50px'
if false; then true; # -->
<!-- # --><img width="50px" src="zPicture_BusinessCard_mirage335_wood.png" style="float: right;margin: 0 0 0 15px;border: 5px solid transparent;">
<!--
fi
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin' '' '3'
if false; then true; # -->
<!-- # --><td width="0%" colspan="3" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
 '_' 'Recommend' ' $(_uid)_12345678.123 ' 'or' 'similar' 'filename.' 'Uniqueness' 'and' 'absence' 'of' 'subdirectories' 'may' 'be' 'desirable.'
 '_' 'Citation' 'of' 'external' 'source,' 'specification' 'of' 'copyright' 'license,' 'may' 'be' 'desirable' 'to' 'add' 'as' 'a' 'comment' 'or' 'visible' 'text.'
 '_image' 'zImage_cabling_2020-11-19-03-19-082.jpg' '50px'
if false; then true; # -->
<!-- # --><img width="50px" src="zImage_cabling_2020-11-19-03-19-082.jpg" style="margin: 0 0 0 15px;border: 5px solid transparent;">
<!--
fi
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_end'
if false; then true; # -->
<!-- # --></table>
<!--
fi
 '_markup_asciidoc_disable_end'
 '_'
 '_heading2' 'breaks - heading2'
if false; then true; # -->
<!-- # --><h2>breaks - heading2</h2>
<!--
fi
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">

<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">


preformatted text at paragraph_end
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
<!--
fi
 '_'
 '_'
 '_'
 '_page'
if false; then true; # -->
<!-- # --><div style="page-break-before: always;margin: 0;padding: 0; border-width: 0px;"> </div>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak 
-H-H-H-H- PageBreak
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_o' '_messagePlain_request' 'request: maybe the user should copy some file next to the "$scriptAbsoluteFolder"'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#b218b2;background-color:#848484;"> request: maybe the user should copy some file next to the "$scriptAbsoluteFolder"</span>
<!-- # --></pre>
<!--
fi
 '_o_' '_messagePlain_request' 'request: maybe the user should copy some file next to the \"\$scriptAbsoluteFolder\"'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#b218b2;background-color:#848484;"> request: maybe the user should copy some file next to the "$scriptAbsoluteFolder"</span>
<!-- # --></pre>
<!--
fi
 '_o' '_messagePlain_probe_var' 'ubiquitousBashIDshort'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#1818b2;background-color:#848484;"> ubiquitousBashIDshort= uk4uPhB6</span>
<!-- # --></pre>
<!--
fi
 '_v' 'ubiquitousBashIDshort'
if false; then true; # -->
<!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->uk4uPhB6
<!-- # --></pre>
<!--
fi
 '_v' 'RECODE_markup_html_pre_begin'
if false; then true; # -->
<!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->&lt;!-- # --&gt;&lt;pre style=&quot;margin-top: 0px;margin-bottom: 
<!-- # -->0px;white-space: pre-wrap;&quot;&gt;
<!-- # --></pre>
<!--
fi
 '_'
 '_'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
preformatted
 text
more
 preformatted
text
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
#
# ###
# ###
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_heading1' 'heading1'
if false; then true; # -->
<!-- # --><h1>heading1</h1>
<!--
fi
 '_heading2' 'heading2'
if false; then true; # -->
<!-- # --><h2>heading2</h2>
<!--
fi
 '_heading3' 'heading3'
if false; then true; # -->
<!-- # --><h3>heading3</h3>
<!--
fi
 '_heading4' 'heading4'
if false; then true; # -->
<!-- # --><h4>heading4</h4>
<!--
fi
 '_heading5' 'heading5'
if false; then true; # -->
<!-- # --><h5>heading5</h5>
<!--
fi
 '_heading6' 'heading6'
if false; then true; # -->
<!-- # --><h6>heading6</h6>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
#
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
raw markup<br \><h1>raw heading1</h2>
<h2>raw heading2</h2>
raw markup 
raw markup
<p>raw paragraph</p>
raw markup
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
raw markup
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
raw markup
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
raw markup
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->

raw markup

<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
<span style="color:#1818b2;background-color:#848484;"> raw HTML markup within paragraph</span>
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
preformatted
text
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">


preformatted
text
"$ubiquitousBashIDshort"


<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">

<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">


<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">



<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_v' 'current_lorem_ipsum'
if false; then true; # -->
<!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod 
<!-- # -->tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim 
<!-- # -->veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
<!-- # -->commodo consequat. Duis aute irure dolor in reprehenderit in voluptate 
<!-- # -->velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
<!-- # -->cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id 
<!-- # -->est laborum.
<!-- # --></pre>
<!--
fi
 '_' 'blank preformatted text will be ignored - at least add an empty space character'
 '_' 'ATTENTION:' 'Some' 'characters' 'may' 'be' 'represented' 'by' 'known' 'alternative' 'markup' 'if' 'necessary' '-' 'eg.' ' \x27 \047 %27 &#39; ' '.'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
x > /dev/null < /dev/null &lt;/dev/null> &lt;h://w.example.com/page/&gt;
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_o' '_safeEcho_newline' 'x > /dev/null < /dev/null &lt;/dev/null> &lt;h://w.example.com/page/&gt;
'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->x > /dev/null < /dev/null &lt;/dev/null> &lt;h://w.example.com/page/&gt;
<!-- # -->
<!-- # --></pre>
<!--
fi
 '_o_' '_safeEcho_newline' 'x \> /dev/null
'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->x > /dev/null
<!-- # --></pre>
<!--
fi
 '_'
 '_'
 '_'
 '_page'
if false; then true; # -->
<!-- # --><div style="page-break-before: always;margin: 0;padding: 0; border-width: 0px;"> </div>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak 
-H-H-H-H- PageBreak
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
 '_' 'Recommend' ' $(_uid)_12345678.123 ' 'or' 'similar' 'filename.' 'Uniqueness' 'and' 'absence' 'of' 'subdirectories' 'may' 'be' 'desirable.'
 '_' 'Citation' 'of' 'external' 'source,' 'specification' 'of' 'copyright' 'license,' 'may' 'be' 'desirable' 'to' 'add' 'as' 'a' 'comment' 'or' 'visible' 'text.'
 '_image' 'zImage_cabling_2020-11-19-03-19-082.jpg'
if false; then true; # -->
<!-- # --><img width="96%" src="zImage_cabling_2020-11-19-03-19-082.jpg" style="margin: 0 0 0 15px;border: 5px solid transparent;">
<!--
fi
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
<!--
fi
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
 '_' 'CAUTION:' 'Unmatched' 'single' 'quotes' 'may' 'cause' 'failure.'
 '_' 'WARNING:' 'Some' 'quoting' 'may' 'not' 'be' 'preserved' '.'
 '_' 'ATTENTION:' 'Single' 'quotes' 'may' 'be' 'represented' 'by' 'known' 'alternative' 'markup' 'if' 'necessary' '-' ' \x27 \047 %27 &#39; ' '.'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" &#39; &#39; &#39; &#39;
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" &#39; &#39; &#39; &#39;
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod 
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim 
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate 
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id 
est laborum.
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_begin'
if false; then true; # -->
<!-- # --><table width="0%" style="empty-cells: show; border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
 '_cells_row_begin'
if false; then true; # -->
<!-- # --><tr>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
1
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
2
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
3
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
4
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
5
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_row_end'
if false; then true; # -->
<!-- # --></tr>
<!--
fi
 '_cells_row_begin'
if false; then true; # -->
<!-- # --><tr>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
6
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
7
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
8
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
9
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_speck_begin' '100%'
if false; then true; # -->
<!-- # --><td width="100%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
<!--
fi
_r '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->
0
<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_cells_speck_end'
if false; then true; # -->
<!-- # --></td>
<!--
fi
 '_cells_row_end'
if false; then true; # -->
<!-- # --></tr>
<!--
fi
 '_cells_end'
if false; then true; # -->
<!-- # --></table>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
<!--
fi
 '_o' '_messagePlain_good' 'done: demo'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#17ae17;background-color:#848484;"> done: demo</span>
<!-- # --></pre>
<!--
fi



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
current_internal_CompressedFunctions_bytes="12476"
current_internal_CompressedFunctions_cksum="439811219"
current_internal_CompressedFunctions="
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"
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
current_script_path=$(type -p "ubiquitous_bash.sh")
[[ ! -e "$current_script_path" ]] && exit 1
! ls -l "$current_script_path" 2>/dev/null | grep 'ubiquitous_bash.sh$' > /dev/null 2>&1 && exit 1
export importScriptLocation=$(_getScriptAbsoluteLocation)
export importScriptFolder=$(_getScriptAbsoluteFolder)
. "$current_script_path" --call
[[ "$ubiquitousBashID" != "uk4uPhB663kVcygT0q" ]] && exit 1
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


filename.html # scriptedIllustrator_markup_uk4uPhB663kVcygT0q --> </html>
