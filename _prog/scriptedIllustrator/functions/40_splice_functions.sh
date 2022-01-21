
_README() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__README_uk4uPhB663kVcygT0q_README__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	head -n$currentAttachmentLine "$scriptAbsoluteLocation"
}
#[[ "$1" == "" ]] && _README && exit 0

_HEADER-scriptCode() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__HEADER-scriptCode_uk4uPhB663kVcygT0q_HEADER-scriptCode__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	head -n$currentAttachmentLine "$scriptAbsoluteLocation"
}
_FOOTER-scriptCode() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__FOOTER-scriptCode_uk4uPhB663kVcygT0q_FOOTER-scriptCode__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	tail -n+$currentAttachmentLine "$scriptAbsoluteLocation"
}
_DOCUMENT-scriptCode() {
	local currentAttachmentLine_header
	currentAttachmentLine_header=`awk '/^#__HEADER-scriptCode_uk4uPhB663kVcygT0q_HEADER-scriptCode__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine_header="$currentAttachmentLine_header - 1"
	
	local currentAttachmentLine_footer
	currentAttachmentLine_footer=`awk '/^#__FOOTER-scriptCode_uk4uPhB663kVcygT0q_FOOTER-scriptCode__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine_footer="$currentAttachmentLine_footer - 1 -1"
	
	local currentAttachmentLine_length
	let currentAttachmentLine_length="$currentAttachmentLine_footer - $currentAttachmentLine_header"
	
	
	head -n$currentAttachmentLine_footer "$scriptAbsoluteLocation" | tail -n$currentAttachmentLine_length
}
_ignore_DOCUMENT_HEADER() {
#echo -e "_ignore_CZXWXcRMTo8EmM8i4d() {\ntrue #_ignore_CZXWXcRMTo8EmM8i4d"
echo "cat << 'ignore_CZXWXcRMTo8EmM8i4d' > /dev/null 2>&1 #_ignore_CZXWXcRMTo8EmM8i4d"
}
_ignore_DOCUMENT_FOOTER() {
echo "ignore_CZXWXcRMTo8EmM8i4d"
#echo "} #_ignore_CZXWXcRMTo8EmM8i4d"
}
#[[ "$1" == "" ]] && _HEADER-scriptCode && exit 0


_HEADER() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__HEADER_uk4uPhB663kVcygT0q_HEADER__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	head -n$currentAttachmentLine "$scriptAbsoluteLocation"
}
_FOOTER() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__FOOTER_uk4uPhB663kVcygT0q_FOOTER__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	tail -n+$currentAttachmentLine "$scriptAbsoluteLocation"
}
_DOCUMENT() {
	local currentAttachmentLine_header
	currentAttachmentLine_header=`awk '/^#__HEADER_uk4uPhB663kVcygT0q_HEADER__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine_header="$currentAttachmentLine_header - 1"
	
	local currentAttachmentLine_footer
	currentAttachmentLine_footer=`awk '/^#__FOOTER_uk4uPhB663kVcygT0q_FOOTER__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine_footer="$currentAttachmentLine_footer - 1 -1"
	
	local currentAttachmentLine_length
	let currentAttachmentLine_length="$currentAttachmentLine_footer - $currentAttachmentLine_header"
	
	
	head -n$currentAttachmentLine_footer "$scriptAbsoluteLocation" | tail -n$currentAttachmentLine_length
}



#env XZ_OPT=-e9 tar -cJvf ./attachment.tar.xz ./attachedFiles
# https://www.linuxjournal.com/node/1005818
_onlyAttachment() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^__ATTACHMENT_uk4uPhB663kVcygT0q_ATTACHMENT__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	tail -n+$currentAttachmentLine "$scriptAbsoluteLocation" | base64 -d
}
_noAttachment() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^__ATTACHMENT_uk4uPhB663kVcygT0q_ATTACHMENT__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	head -n$currentAttachmentLine "$scriptAbsoluteLocation"
}
_rmAttachment() {
	 _start
	 rmdir "$scriptLocal" > /dev/null 2>&1
	# WARNING: Unattached package file may be deleted by script through user called functions.
	_extractAttachment
	_noAttachment > "$safeTmp"/temp.sh
	mv "$safeTmp"/temp.sh "$scriptAbsoluteLocation"
	chmod u+x "$scriptAbsoluteLocation"
	 _stop
}
_attachAttachment() {
	 _start
	 rmdir "$scriptLocal" > /dev/null 2>&1
	_noAttachment > "$safeTmp"/temp.sh
	cat "$scriptAbsoluteFolder"/attachment.tar.xz | base64 >> "$safeTmp"/temp.sh
	mv "$safeTmp"/temp.sh "$scriptAbsoluteLocation"
	chmod u+x "$scriptAbsoluteLocation"
	 _stop
}
_extractAttachment() {
	[[ -e "$scriptAbsoluteFolder"/attachment.tar.xz ]] && return 0
	_onlyAttachment > "$scriptAbsoluteFolder"/attachment.tar.xz
}

