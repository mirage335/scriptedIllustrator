<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
#exit #scriptedIllustrator_markup_uk4uPhB663kVcygT0q
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
 '_heading1' 'document - heading1'
if false; then true; # -->
<!-- # --><h1>document - heading1</h1>
<!--
fi
 '_o' '_messageNormal' 'demo: self-modifying interleaved markup and shell'
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # --><span style="color:#54ff54;background-color:#18b2b2;"> demo: self-modifying interleaved markup and shell</span>
<!-- # --></pre>
<!--
fi
 '_heading2' 'date - heading2'
if false; then true; # -->
<!-- # --><h2>date - heading2</h2>
<!--
fi
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
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
<!-- # --># 2021-10-26
<!-- # --></pre>
<!--
fi
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
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
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
 '_' 'Recommend' ' $(_uid)_12345678.123 ' 'or' 'similar' 'filename.' 'Uniqueness' 'and' 'absence' 'of' 'subdirectories' 'may' 'be' 'desirable.'
 '_' 'Citation' 'of' 'external' 'source,' 'specification' 'of' 'copyright' 'license,' 'may' 'be' 'desirable' 'to' 'add' 'as' 'a' 'comment' 'or' 'visible' 'text.'
 '_image' 'zImage_cabling__2020-11-19-03-19-082.jpg' '150px'
if false; then true; # -->
<!-- # --><img width="150px" src="zImage_cabling__2020-11-19-03-19-082.jpg" style="margin: 0 0 0 15px;border: 5px solid transparent;">
<!--
fi
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
<!--
fi
 '_heading2' 'equations and commands - heading2'
if false; then true; # -->
<!-- # --><h2>equations and commands - heading2</h2>
<!--
fi
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
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
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
<!--
fi
 '_'
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
 '_o' '_safeEcho_newline' '\# with output'
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
 '_paragraph_begin'
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
 '_paragraph_end'
if false; then true; # -->
<!-- # --></p>
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
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
 '_' 'WARNING:' 'Some' 'quoting' 'may' 'not' 'be' 'preserved' '.'
 '_' '_o' '_safeEcho_newline' '' \ \\  output''
 '_o' '_safeEcho_newline' '' \ \\  output''
if false; then true; # -->
<!-- # --><pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
<!-- # -->\ \  output
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
 '_image' 'zImage_cabling__2020-11-19-03-19-082.jpg' '50px'
if false; then true; # -->
<!-- # --><img width="50px" src="zImage_cabling__2020-11-19-03-19-082.jpg" style="margin: 0 0 0 15px;border: 5px solid transparent;">
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
 preformatted text at paragraph_begin
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
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
<!-- # --><div style="page-break-before: always;"> </div>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
-------------------------------------------------------------------------------
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_o' '_messagePlain_request' 'request: maybe the user should copy some file next to the \"\$scriptAbsoluteFolder\"'
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
<!-- # -->&lt;!-- # --&gt;&lt;pre style=&quot;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;&quot;&gt;
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
<!-- # -->Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
<!-- # --></pre>
<!--
fi
 '_' 'blank preformatted text will be ignored - at least add an empty space character'
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
x > /dev/null
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_'
 '_'
 '_'
 '_page'
if false; then true; # -->
<!-- # --><div style="page-break-before: always;"> </div>
<!--
fi
_t '
scriptedIllustrator_markup_uk4uPhB663kVcygT0q --><!-- # --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">
-------------------------------------------------------------------------------
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
 '_paragraph_begin'
if false; then true; # -->
<!-- # --><p>
<!--
fi
 '_' 'Recommend' ' $(_uid)_12345678.123 ' 'or' 'similar' 'filename.' 'Uniqueness' 'and' 'absence' 'of' 'subdirectories' 'may' 'be' 'desirable.'
 '_' 'Citation' 'of' 'external' 'source,' 'specification' 'of' 'copyright' 'license,' 'may' 'be' 'desirable' 'to' 'add' 'as' 'a' 'comment' 'or' 'visible' 'text.'
 '_image' 'zImage_cabling__2020-11-19-03-19-082.jpg'
if false; then true; # -->
<!-- # --><img width="96%" src="zImage_cabling__2020-11-19-03-19-082.jpg" style="margin: 0 0 0 15px;border: 5px solid transparent;">
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
 '_' 'ATTENTION:' 'Single' 'quotes' 'may' 'be' 'represented' 'by' 'known' 'alternative' 'markup' 'if' 'necessary' '-' ' \x27 \047 %27 &#92; ' '.'
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
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
<!-- # --></pre><!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q
'
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



# NOTICE: Overrides ( 'ops.sh' equivalent).


# NOTICE: Overrides ( 'ops.sh' equivalent).


#####Functions. Some may be from 'ubiquitous bash' .
#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions
current_internal_CompressedFunctions_bytes='10548'
current_internal_CompressedFunctions_cksum='1180883320'
current_internal_CompressedFunctions='
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
PYz2BQANTDPsscRn+wIAAAAABFla'
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


filename.html # scriptedIllustrator_markup_uk4uPhB663kVcygT0q --> </html>
