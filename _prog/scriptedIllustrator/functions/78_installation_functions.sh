
_test_built_default() {
	# CAUTION: Do NOT add trap unless necessary or within a function call. Unnecessary and may be problematic for a script which imports 'ubiquitous bash' and does not nominally use '_start'/'_stop'/"$safeTmp"/etc .
	
	#Traps, if script is not imported into existing shell, or bypass requested.
	# WARNING Exact behavior of this system is critical to some use cases.
	trap 'excode=$?; _stop $excode; trap - EXIT; echo $excode' EXIT HUP QUIT PIPE 	# reset
	trap 'excode=$?; trap "" EXIT; _stop $excode; echo $excode' EXIT HUP QUIT PIPE 	# ignore
	
	# DANGER: Mechanism of workaround 'ub_trapSet_stop_emergency' is not fully understood, and was added undesirably late in development, with unknown effects. Nevertheless, a need for such functionality is expected to be encountered only rarely.
	# At least '_closeChRoot' , '_userChRoot' , '_userVBox' do not seem to have lost functionality.
	# DANGER: Any shell command matching ' _timeout.*&$ ' (backgrounding of _timeout) will probably be unable to reach '_stop' correctly, and may not remove temporary directories, etc.
	if [[ "$ub_trapSet_stop_emergency" != 'true' ]]
	then
		trap 'excode=$?; _stop_emergency $excode; trap - EXIT; echo $excode' INT TERM	# reset
		trap 'excode=$?; trap "" EXIT; _stop_emergency $excode; echo $excode' INT TERM	# ignore
		export ub_trapSet_stop_emergency='true'
	fi
	
	
	_start
	
	_messageNormal 'init: _test_built_default'
	
	cp "$scriptAbsoluteLocation" "$safeTmp"/scriptedIllustrator.sh
	chmod u+x "$safeTmp"/scriptedIllustrator.sh
	
	_messagePlain_nominal '_test: comparison of self-modified html from html from shell (original)'
	"$safeTmp"/scriptedIllustrator.sh _scribble_html "$safeTmp"/scriptedIllustrator.html
	cp "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.compare.html
	"$safeTmp"/scriptedIllustrator.html
	! diff --color "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.compare.html && _messagePlain_bad 'fail: unexpected differences'
	"$safeTmp"/scriptedIllustrator.html _scribble_html
	! diff --color "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.compare.html && _messagePlain_bad 'fail: unexpected differences'
	"$safeTmp"/scriptedIllustrator.html _scribble_html "$safeTmp"/scriptedIllustrator.html
	! diff --color "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.compare.html && _messagePlain_bad 'fail: unexpected differences'
	
	_messagePlain_nominal '_test: comparison of html from shell (original) versus html (from original and as shell)'
	"$safeTmp"/scriptedIllustrator.sh _scribble_html "$safeTmp"/scriptedIllustrator.html
	mv "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.sh
	chmod u+x "$safeTmp"/scriptedIllustrator.html.sh
	"$safeTmp"/scriptedIllustrator.html.sh _scribble_html "$safeTmp"/scriptedIllustrator.html
	! diff --color "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.sh && _messagePlain_bad 'fail: unexpected differences'
	
	_messagePlain_nominal '_test: rewrite of shell (converted) from shell (original)'
	cat "$safeTmp"/scriptedIllustrator.html | grep -v scriptedIllustrator_markup_uk4uPhB663kVcygT0q > "$safeTmp"/converted.sh
	chmod u+x "$safeTmp"/converted.sh
	
	# Spacing differences (ie. newlines) on first conversion are normal (due to machine output being more compressed) - all other differences are not.
	#_messagePlain_nominal '_test: comparison of shell (original) versus shell (from original): some differences normal'
	# KDiff3 visualization is significantly simpler.
	#! diff --color "$safeTmp"/scriptedIllustrator.sh "$safeTmp"/converted.sh && _messagePlain_probe 'differences (most likely insiginificant)'
	
	_messagePlain_nominal '_test: comparison of html from shell (converted) versus html from shell (original)'
	"$safeTmp"/converted.sh _scribble_html "$safeTmp"/converted.html
	mv "$safeTmp"/converted.html "$safeTmp"/converted.html.sh
	chmod u+x "$safeTmp"/converted.html.sh
	"$safeTmp"/converted.html.sh _scribble_html "$safeTmp"/converted.html
	! diff --color "$safeTmp"/converted.html "$safeTmp"/converted.html.sh && _messagePlain_bad 'fail: unexpected differences'
	
	_messagePlain_nominal '_test: comparison of shell (converted) versus shell from html (filtered) from shell (converted)'
	cat "$safeTmp"/converted.html | grep -v scriptedIllustrator_markup_uk4uPhB663kVcygT0q > "$safeTmp"/converted_repeat.sh
	chmod u+x "$safeTmp"/converted_repeat.sh
	! diff --color "$safeTmp"/converted.sh "$safeTmp"/converted_repeat.sh && _messagePlain_bad 'fail: unexpected differences'
	
	
	
	rm "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.sh "$safeTmp"/converted.sh "$safeTmp"/converted.html "$safeTmp"/converted.html.sh "$safeTmp"/converted_repeat.sh
	
	_messagePlain_good 'done: _test_built_default'
	
	_stop
}

_test_default() {
	_test_built_default "$@"
}
