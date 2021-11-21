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
<!-- # --># 2021-11-21
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
 '_cells_speck_begin'
if false; then true; # -->
<!-- # --><td width="0%" colspan="1" style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">
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
current_internal_CompressedFunctions_bytes='12295'
current_internal_CompressedFunctions_cksum='1509126364'
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


filename.html # scriptedIllustrator_markup_uk4uPhB663kVcygT0q --> </html>
