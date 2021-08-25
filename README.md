Copyright (C) 2021 mirage335
See the end of the file for license conditions.
See license.txt for scriptedIllustrator license conditions.

Creates editable 'template' scripts.

Intended to assist quickly or colloboratively embedding dynamic external data (ie. calculations, source code analysis, web sites, images, etc) within documentation. MediaWiki users in particular may simply edit text and post the markup file - only the intended text will be visible while the interleaved code remains executable and commented out from the markup.

Markup files are executable, all having functionally identical shell code, and can automatically convert to other scripting/markup languages (eg. HTML and MediaWiki compatible files are capable of identical output).



# Usage

```
./scriptedIllustrator.sh _README
./compile.sh ; ./scriptedIllustrator.sh _experiment

./scriptedIllustrator.sh _scribble_html
./scriptedIllustrator.html _scribble_html
```

"KWrite" is strongly recommended. Syntax highlighting of '# NOTICE' is helpful . Syntax highlighting may be either 'bash' or markup at any time as desired.



# Design


Conversion between scripting/markup launguages must not cause any differences, as these will accumulate in practice. MSW/Cygwin compatible.

Automatic '_test' function attempts some plausible conversions to ensure unexpected differences do not occur.

```
./scriptedIllustrator.sh _test
./scriptedIllustrator.html _test

```



# Safety

Most documentation scripts are expected compatible with Cloud services, or QEMU virtual machines (possibly without any hardware/accelerated virtualization). Users should be provided access to these, rather than running such documentation scripts directly.

Version control very strongly recommended. Obviously these scripts can self-overwrite (which is very often desirable), especially if editing markup files directly (which is when self-overwrite is most desirable for convenience).



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
