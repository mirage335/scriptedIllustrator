
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
}




