xml source
sourcenotwfsa083xml
	"Source file: xmltest/not-wf/sa/083.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e SYSTEM "nul" NDATA n>
]>
<doc>&e;</doc>
'