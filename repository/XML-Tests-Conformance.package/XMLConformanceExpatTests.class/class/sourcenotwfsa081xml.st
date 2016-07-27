xml source
sourcenotwfsa081xml
	"Source file: xmltest/not-wf/sa/081.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e SYSTEM "nul">
]>
<doc a="&e;"></doc>
'