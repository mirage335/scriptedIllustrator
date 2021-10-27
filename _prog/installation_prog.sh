
_test_prog() {
	! _wantGetDep 'wkhtmltopdf' && echo 'missing: wkhtmltopdf'
	
	#! _wantGetDep 'pandoc' && echo 'missing: pandoc'
	#! _wantGetDep 'perltex'
	#! _wantGetDep 'wkhtmltopdf' && echo 'missing: wkhtmltopdf'
	
	#! _wantGetDep 'phantomjs' && echo 'missing: phantomjs'
	
	#! _wantGetDep 'html2ps' && echo 'missing: html2ps'
	
	#! _wantGetDep 'htmldoc' && echo 'missing: htmldoc'
	
	
	
	! _wantGetDep 'recode' && echo 'missing: recode'
	
	
	_getDep 'fold'
	_getDep 'perl'
	_getDep 'sed'
	
	
	! echo \$123 | grep -E '^\$[0-9]|^\.[0-9]' > /dev/null 2>&1 && _messageFAIL && return 1
	! echo \.123 | grep -E '^\$[0-9]|^\.[0-9]' > /dev/null 2>&1 && _messageFAIL && return 1
	echo 123 | grep -E '^\$[0-9]|^\.[0-9]' > /dev/null 2>&1 && _messageFAIL && return 1
	
	! echo '123' | grep -E '1.*3' > /dev/null 2>&1 && _messageFAIL && return 1
	
	
	! _wantGetDep 'asciidoc' && echo 'missing: asciidoc'
	! _wantGetDep /etc/asciidoc/dblatex/asciidoc-dblatex.sty && echo 'missing: asciidoc: dblatex'
	! _wantGetDep /etc/asciidoc/dblatex/asciidoc-dblatex.xsl && echo 'missing: asciidoc: dblatex'
}




