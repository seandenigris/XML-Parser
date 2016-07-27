xml source
sourcenotwfsa140xml
	"Source file: xmltest/not-wf/sa/140.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "<&#x309a;></&#x309a;>">
]>
<doc>&e;</doc>
'