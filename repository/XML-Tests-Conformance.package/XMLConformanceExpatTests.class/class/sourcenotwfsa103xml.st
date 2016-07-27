xml source
sourcenotwfsa103xml
	"Source file: xmltest/not-wf/sa/103.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "&#60;foo>">
]>
<doc>&e;</doc>
'