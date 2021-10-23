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

# Copyright and related rights waived via CC0 .
# Compressed functions from 'scriptedIllustrator' may remain GPLv3 copyrighted .

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
_
_ '


'
_heading1 'document - heading1'
_o _messageNormal 'demo: self-modifying interleaved markup and shell'
_heading2 'date - heading2'
_paragraph_begin
_o _messagePlain_request "request: date --iso-8601=ns"
_o _messagePlain_probe date --iso-8601
_e_ '[[ "$noDate" != "true" ]] && date --iso-8601'
_paragraph_end
_heading2 'images - heading2'
_paragraph_begin
_t 'preformatted text within paragraph'
_picture "zPicture_BusinessCard_mirage335_wood.png" 100px
_paragraph_end
_paragraph_begin
_image "zImage_cabling__2020-11-19-03-19-082.jpg" 150px
_paragraph_end
_heading2 'equations and commands - heading2'
_paragraph_begin
_e_ currentBitsPerSecond=9600
_e_ currentBonesPerPlayer=4
_i currentIncrementFramesPerSecond=15
_i currentIncrementFrameBytesPerBone=2
_i currentInstantFramesPerSecond=2
_i currentInstantFrameBytesPerBone=12
_
_h '
# Severely degraded and highly compressed connection between just two players.
_e currentBitsPerSecond=9600 ; currentBonesPerPlayer=4 ; currentIncrementFramesPerSecond=15 ; currentIncrementFrameBytesPerBone=2 ; currentInstantFramesPerSecond=2 ; currentInstantFrameBytesPerBone=12 ; currentByte=8 ; solve "("$currentBitsPerSecond" == (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentIncrementFramesPerSecond" * "$currentIncrementFrameBytesPerBone" * "$currentByte") + (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentInstantFramesPerSecond" * "$currentInstantFrameBytesPerBone" * "$currentByte"), \"currentPlayers\")"
# # solve(9600 = (("currentPlayers" * 4 * 30 * 2 * 8) + ("currentPlayers" * 4 * 3 * 33 * 8)), "currentPlayers") =
# # 5.5555556'
_e_ solve '"("$currentBitsPerSecond" == (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentIncrementFramesPerSecond" * "$currentIncrementFrameBytesPerBone" * "$currentByte") + (\"currentPlayers\" * "$currentBonesPerPlayer" * "$currentInstantFramesPerSecond" * "$currentInstantFrameBytesPerBone" * "$currentByte"), \"currentPlayers\")"'
_paragraph_end
_
_cells_begin
_
_cells_row_begin
_cells_speck_begin '125px'
_t '*titleA*'
_cells_speck_end
_cells_speck_begin
_ CAUTION: Text formatting *intentionally* not compatible with all markup and not recommended unless strictly necessary for presentation HTML/MediaWiki documents!
_ WARNING: Stay with 'plain text' whenever possible!
_t '<span style="font-weight:bold;font-style: italic;">*titleB*</span>'
_cells_speck_end
_cells_speck_begin
_t '*titleC*'
_cells_speck_end
_cells_speck_begin
_t '  *titleD*  '
_cells_speck_end
_cells_row_end
_
_cells_row_begin
_
_cells_speck_begin
_t 'example'
_paragraph_begin
_o _messagePlain_probe 'commands'
_o _safeEcho_newline '\# with output'
_paragraph_end
_cells_speck_end
_
_cells_speck_begin
_paragraph_begin
_e_ ubiquitous_bash.sh _echo 'a b'
_paragraph_end
_e ubiquitous_bash.sh _echo 'a
b'
_paragraph_begin
_o _safeEcho_newline "'"' \ \\  output'"'"
_paragraph_end
_cells_speck_end
_
_cells_speck_begin
_e _color_demo
_cells_speck_end
_
_cells_row_end
_
_
_cells_row_begin
_cells_speck_begin
_o _safeEcho_newline 'output'
_cells_speck_end
_cells_speck_begin '' '2'
_r ' raw markup'
_cells_speck_end
_cells_speck_begin '' '2'
_t ' pre'
_cells_speck_end
_cells_row_end
_
_cells_row_begin
_cells_speck_begin
_picture "zPicture_BusinessCard_mirage335_wood.png" 50px
_cells_speck_end
_cells_speck_begin '' '3'
_image "zImage_cabling__2020-11-19-03-19-082.jpg" 50px
_cells_speck_end
_cells_end
_
_heading2 'breaks - heading2'
_paragraph_begin
_t ' preformatted text at paragraph_begin'
_t '

'
_t '


preformatted text at paragraph_end'
_paragraph_end
_
_
_
_page
_t '-------------------------------------------------------------------------------
'
_o _messagePlain_request 'request: maybe the user should copy some file next to the \"\$scriptAbsoluteFolder\"'
_o _messagePlain_probe_var ubiquitousBashIDshort
_v ubiquitousBashIDshort
_v RECODE_markup_html_pre_begin
_
_
_t 'preformatted
text'
_t '#
# ###
&#35; &#35;&#35;&#35;
'
_heading1 'heading1'
_heading2 'heading2'
_heading3 'heading3'
_heading4 'heading4'
_heading5 'heading5'
_heading6 'heading6'
_t '#
'
_r 'raw markup<br \><h1>raw heading1</h2>
<h2>raw heading2</h2>
raw markup 
raw markup
<p>raw paragraph</p>
raw markup'
_r '
raw markup'
_r 'raw markup
'
_r '
raw markup
'
_r '

raw markup

'
_t '
preformatted
text'
_t '


preformatted
text
"$ubiquitousBashIDshort"


'
_t ''
_t '
'
_t '

'
_t '


'
_t '



'
_v current_lorem_ipsum
_ 'blank preformatted text will be ignored - at least add an empty space character'
_t ''
_t 'x > /dev/null'
_
_
_
_page
_t '-------------------------------------------------------------------------------
'
_paragraph_begin
_image "zImage_cabling__2020-11-19-03-19-082.jpg"
_paragraph_end
_t 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
_o _messagePlain_good 'done: demo'
#__FOOTER_uk4uPhB663kVcygT0q_FOOTER__
# NOTICE: DOCUMENT
#y
#z
echo -e '\n\n'
}



# NOTICE: Overrides ( 'ops.sh' equivalent).


# NOTICE: Overrides ( 'ops.sh' equivalent).

