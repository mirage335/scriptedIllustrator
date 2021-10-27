Copyright (C) 2021 mirage335
See the end of the file for license conditions.
See license.txt for scriptedIllustrator license conditions.

A 'UNIX TiddlyWiki' . A 'LibreOffice' or 'MSOffice' for programmers. A word processor for wiki, shell, bash, or TI calculator users.


Self-modifying mix of shellcode script and markup. Users need not understand the code to edit the text.

```
./scriptedIllustrator.html -> equations and commands-> , scriptedIllustrator.html , scriptedIllustrator.pdf , scriptedIllustrator.md , etc -> edit 'scriptIllustrator.html' again and again
```


Intended to assist quickly or colloboratively embedding dynamic external data (ie. calculations, source code analysis, web sites, images, etc) within documentation. MediaWiki users in particular may simply edit text and post the markup file - only the intended text will be visible while the interleaved code remains executable and commented out from the markup. 

Markup files of many markup launguages (eg. HTML, MediaWiki, markdown) are executable, automatically convertable, all having functionally identical shell code (eg. HTML and MediaWiki compatible files are capable of identical output).

Conversion to 'LibreOffice' 'docx' or 'odt' is best achieved by copy/paste from a web browser.

Automatic conversion to 'asciidoc' is available, however, that format seems to have relatively limited functionality. Automatic conversion to 'LibreOffice' is technically possible, however, copy/paste from a web browser viewing HTML markup achieves more accurate results with much more functionality.


# Usage

```
./scriptedIllustrator.sh _README
./compile.sh ; ./scriptedIllustrator.sh _experiment

./scriptedIllustrator.sh _scribble_html
./scriptedIllustrator.html _scribble_html

# By default, 'scribble' all possible markup .
./scriptedIllustrator.sh
./scriptedIllustrator.html
./scriptedIllustrator.mediawiki.txt
```

"KWrite" is strongly recommended. Syntax highlighting of '# NOTICE' is helpful . Syntax highlighting may be either 'bash' or markup at any time as desired.



# Design


Conversion between scripting/markup launguages must not cause any differences, as these will accumulate in practice. MSW/Cygwin compatible.

Automatic '_test' function attempts some plausible conversions to ensure unexpected differences do not occur.

```
./scriptedIllustrator.sh _test
./scriptedIllustrator.html _test

./compile.sh ; ./scriptedIllustrator.html _test ; ./scriptedIllustrator.mediawiki.txt

```



# Safety

Most documentation scripts are expected compatible with Cloud services, or QEMU virtual machines (possibly without any hardware/accelerated virtualization). Users should be provided access to these, rather than running such documentation scripts directly.

Version control very strongly recommended. Obviously these scripts can self-overwrite (which is very often desirable), especially if editing markup files directly (which is when self-overwrite is most desirable for convenience).




# Reference

https://unix.stackexchange.com/questions/533886/is-there-a-command-line-tool-for-converting-html-files-to-pdf
 'pandoc'
 'htmldoc'
 'html2ps'
 'phantomjs'


https://github.com/go-easygen/easygen
https://pkg.go.dev/github.com/go-easygen/easygen?utm_source=godoc#pkg-examples
https://github.com/imatix/gsl


https://en.wikipedia.org/wiki/AsciiDoc
https://github.com/dagwieers/asciidoc-odf
https://powerman.name/doc/asciidoc
https://docs.asciidoctor.org/asciidoc/latest/comments/



__Copyright__
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
along with scriptedIllustrator.  If not, see <http://www.gnu.org/licenses/>.
