xml source
sourcenotwfsa104xml
	"Source file: xmltest/not-wf/sa/104.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "<foo>">
]>
<doc>&e;</foo></doc>
'