
Copyright (C) 2021 mirage335
See the end of the file for license conditions.
See license.txt for scriptedIllustrator license conditions.

A &#39;UNIX TiddlyWiki&#39; . A &#39;LibreOffice&#39; or &#39;MSOffice&#39; for programmers. A word processor for wiki, shell, bash, or TI calculator users.


Self-modifying mix of shellcode script and markup. Users need not understand the code to edit the text.


[0;37;100m[0;34m ./scriptedIllustrator.html -> equations and commands-> , scriptedIllustrator.html , scriptedIllustrator.pdf , scriptedIllustrator.md , etc -> edit &#39;scriptIllustrator.html&#39; again and again [0m[0m


Intended to assist quickly or colloboratively embedding dynamic external data (ie. calculations, source code analysis, web sites, images, etc) within documentation. MediaWiki users in particular may simply edit text and post the markup file - only the intended text will be visible while the interleaved code remains executable and commented out from the markup. 

Markup files of many markup launguages (eg. HTML, MediaWiki, markdown) are executable, automatically convertable, all having functionally identical shell code (eg. HTML and MediaWiki compatible files are capable of identical output).

Conversion to &#39;LibreOffice&#39; &#39;docx&#39; or &#39;odt&#39; is best achieved by copy/paste from a web browser.

Automatic conversion to &#39;asciidoc&#39; is available, however, that format seems to have relatively limited functionality. Automatic conversion to &#39;LibreOffice&#39; is technically possible, however, copy/paste from a web browser viewing HTML markup achieves more accurate results with much more functionality.

_ Examples _

This README itself is an example. PDF render of HTML is most accurate.
https://github.com/mirage335/scriptedIllustrator/blob/main/README.pdf




_ Usage _

[0;37;100m[0;34m./scriptedIllustrator.sh _README[0m
[0;37;100m./compile.sh ; ./scriptedIllustrator.sh _experiment[0m

[0;37;100m./scriptedIllustrator.sh _scribble_html[0m
[0;37;100m./scriptedIllustrator.html _scribble_html[0m

[0;37;100m# By default, &#39;scribble&#39; all possible markup .[0m
[0;37;100m./scriptedIllustrator.sh[0m
[0;37;100m./scriptedIllustrator.html[0m
[0;37;100m./scriptedIllustrator.mediawiki.txt[0m

[0;37;100m# Other markup formats available.[0m
[0;37;100m# Notable &#39;terminal&#39; markup for readability (colors, headings, etc) and quick experimentation from command line.[0m
[0;37;100m./README.sh DOCUMENT > ./README.sh.out.txt[0m
[0;37;100mless -R ./README.sh.out.txt[0m
[0;37;100m[0m[0m



"KWrite" is strongly recommended. Syntax highlighting of &#39;# NOTICE&#39; is helpful . Syntax highlighting may be either &#39;bash&#39; or markup at any time as desired.




 '_page'
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
		
_ Design _

Conversion between scripting/markup launguages must not cause any differences, as these will accumulate in practice. MSW/Cygwin compatible.

Automatic &#39;_test&#39; function attempts some plausible conversions to ensure unexpected differences do not occur.


[0;37;100m[0;34m./scriptedIllustrator.sh _test[0m
[0;37;100m./scriptedIllustrator.html _test[0m

[0;37;100m./compile.sh ; ./scriptedIllustrator.html _test ; ./scriptedIllustrator.mediawiki.txt [0m[0m




 '_page'
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
		
_ Safety _

Most documentation scripts are expected compatible with Cloud services, or QEMU virtual machines (possibly without any hardware/accelerated virtualization). Users should be provided access to these, rather than running such documentation scripts directly.

Version control very strongly recommended. Obviously these scripts can self-overwrite (which is very often desirable), especially if editing markup files directly (which is when self-overwrite is most desirable for convenience).




 '_page'
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
		
_ Reference _


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




 '_page'
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
		
_ Copyright _


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




 '_page'
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
		

PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak


PAGE INTENTIONALLY BLANK


PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
 '_page'
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
		
[0;37;100m[1;32;46m demo: self-modifying interleaved markup and shell [0m[0m
_ document - heading1 _
__ date - heading2 __
[0;37;100m[0;35m request: date --iso-8601=ns [0m[0m
[0;37;100m[0;34m date --iso-8601 [0m[0m
[0;34m  '[[ "$noDate" != "true" ]] && date --iso-8601' [0m
[0;37;100m# 2021-11-21[0m
__ images - heading2 __


preformatted text within paragraph
 '_picture' 'zPicture_BusinessCard_mirage335_wood.png' '100px'

 '_image' 'zImage_cabling_2020-11-19-03-19-082.jpg' '150px'
__ equations and commands - heading2 __
[0;34m  'currentBitsPerSecond=9600' [0m
[0;34m  'currentBonesPerPlayer=4' [0m
[0;34m  'solve' '"("$currentBitsPerSecond" == (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentIncrementFramesPerSecond" * "$currentIncrementFrameBytesPerBone" * "$currentByte") + (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentInstantFramesPerSecond" * "$currentInstantFrameBytesPerBone" * "$currentByte"), \"currentPlayers\")"' [0m
[0;37;100m# 5.5555556[0m
 
 '_cells_begin'
 '_cells_row_begin'
 '_cells_speck_begin' '125px'

*titleA*
 '_cells_speck_end'
 '_cells_speck_begin'

<span style="font-weight:bold;font-style: italic;">*titleB*</span>
 '_cells_speck_end'
 '_cells_speck_begin'

*titleC*
 '_cells_speck_end'
 '_cells_speck_begin'

  *titleD*  
 '_cells_speck_end'
 '_cells_row_end'
 '_cells_row_begin'
 '_cells_speck_begin'

example

[0;37;100m[0;34m commands [0m[0m
[0;37;100m# with output[0m

 '_cells_speck_end'
 '_cells_speck_begin'

[0;34m  'ubiquitous_bash.sh' '_echo' 'a b' [0m
[0;37;100m# a b[0m
[0;37;100m[0;34m  'ubiquitous_bash.sh' '_echo' 'a[0m
[0;37;100mb' [0m[0m
# a
# b

[0;37;100moutput[0m
[0;37;100mtab[0m
[0;37;100moutput[0m
[0;37;100m' \ \  output'[0m
[0;37;100m][0m
[0;37;100m\#[0m
 '_cells_speck_end'
 '_cells_speck_begin'
[0;37;100m[0;34m  '_color_demo' [0m[0m
# [0;35m _color_demo [0m
# [0;36m _color_demo [0m
# [0;34m _color_demo [0m
# [0;34m _color_demo [0m
# [0;34m ubiquitousBashIDshort= uk4uPhB6 [0m
# [0;32m _color_demo [0m
# [1;33m _color_demo [0m
# [0;31m _color_demo [0m
# [0;34m echo _color_demo [0m
# _color_demo
# [0;34m  "echo" "_color_demo" [0m
# [0;34m  'echo' '_color_demo' [0m
# [1;32;46m _color_demo [0m
# [1;33;41m _color_demo [0m
# [1;33;47m delay: InterProcess-Communication [0m
 '_cells_speck_end'
 '_cells_row_end'
 '_cells_row_begin'
 '_cells_speck_begin'
[0;37;100moutput[0m
 '_cells_speck_end'
 '_cells_speck_begin' '' '2'
_r '
 raw markup
'
 '_cells_speck_end'
 '_cells_speck_begin' '' '2'

 pre
 '_cells_speck_end'
 '_cells_row_end'
 '_cells_row_begin'
 '_cells_speck_begin'
 '_picture' 'zPicture_BusinessCard_mirage335_wood.png' '50px'
 '_cells_speck_end'
 '_cells_speck_begin' '' '3'
 '_image' 'zImage_cabling_2020-11-19-03-19-082.jpg' '50px'
 '_cells_speck_end'
 '_cells_end'
__ breaks - heading2 __






preformatted text at paragraph_end

 '_page'
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
		

PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
[0;37;100m[0;35m request: maybe the user should copy some file next to the "$scriptAbsoluteFolder" [0m[0m
[0;37;100m[0;35m request: maybe the user should copy some file next to the "$scriptAbsoluteFolder" [0m[0m
[0;37;100m[0;34m ubiquitousBashIDshort= uk4uPhB6 [0m[0m
uk4uPhB6
&lt;pre style=&quot;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;&quot;&gt;

preformatted
 text
more
 preformatted
text

#
# ###
&#35; &#35;&#35;&#35;
_ heading1 _
__ heading2 __
___ heading3 ___
____ heading4 ____
_____ heading5 _____
______ heading6 ______

#
_r '
raw markup<br \><h1>raw heading1</h2>
<h2>raw heading2</h2>
raw markup 
raw markup
<p>raw paragraph</p>
raw markup
'
_r '
raw markup
'
_r '
raw markup
'
_r '
raw markup
'
_r '

raw markup

'

_r '
<span style="color:#1818b2;background-color:#848484;"> raw HTML markup within paragraph</span>
'


preformatted
text



preformatted
text
"$ubiquitousBashIDshort"












Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

x > /dev/null < /dev/null &lt;/dev/null> &lt;h://w.example.com/page/&gt;
[0;37;100mx > /dev/null < /dev/null &lt;/dev/null> &lt;h://w.example.com/page/&gt;[0m

[0;37;100mx > /dev/null[0m
 '_page'
PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak
		

PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak

 '_image' 'zImage_cabling_2020-11-19-03-19-082.jpg'



\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" \x27 \047 %27 &#39;
_r '
\ \\ \\\ \\\\ \\\\\ ` `` ``` ```` $() [] {} " "" \x27 \047 %27 &#39;
'


Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


 '_cells_begin'
 '_cells_row_begin'
 '_cells_speck_begin'
_r '
1
'
 '_cells_speck_end'
 '_cells_speck_begin'
_r '
2
'
 '_cells_speck_end'
 '_cells_speck_begin'
_r '
3
'
 '_cells_speck_end'
 '_cells_speck_begin'
_r '
4
'
 '_cells_speck_end'
 '_cells_speck_begin'
_r '
5
'
 '_cells_speck_end'
 '_cells_row_end'
 '_cells_row_begin'
 '_cells_speck_begin'
_r '
6
'
 '_cells_speck_end'
 '_cells_speck_begin'
_r '
7
'
 '_cells_speck_end'
 '_cells_speck_begin'
_r '
8
'
 '_cells_speck_end'
 '_cells_speck_begin'
_r '
9
'
 '_cells_speck_end'
 '_cells_speck_begin'
_r '
0
'
 '_cells_speck_end'
 '_cells_row_end'
 '_cells_end'


[0;37;100m[0;32m done: demo [0m[0m



