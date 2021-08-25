_generate_compile_bash_prog() {
	"$scriptAbsoluteLocation" _true
	
	#return
	
	rm "$scriptAbsoluteFolder"/ubiquitous_bash.sh
	
	#"$scriptAbsoluteLocation" _compile_bash cautossh cautossh
	#"$scriptAbsoluteLocation" _compile_bash lean lean.sh
	
	#"$scriptAbsoluteLocation" _compile_bash core ubiquitous_bash.sh
	
	#"$scriptAbsoluteLocation" _compile_bash "" ""
	#"$scriptAbsoluteLocation" _compile_bash ubiquitous_bash ubiquitous_bash.sh
	
	#"$scriptAbsoluteLocation" _package
	
	
	#"$scriptAbsoluteLocation" _compile_bash scriptedIllustrator ubiquitous_bash.sh
	
	"$scriptAbsoluteLocation" _compile_bash tinyCompiler_scriptedIllustrator tinyCompiler_scriptedIllustrator.sh
	
	"$scriptAbsoluteFolder"/tinyCompiler_scriptedIllustrator.sh _tinyCompiler_scriptedIllustrator
}
