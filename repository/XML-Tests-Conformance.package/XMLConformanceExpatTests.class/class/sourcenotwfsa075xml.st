xml source
sourcenotwfsa075xml
	"Source file: xmltest/not-wf/sa/075.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e1 "&e2;">
<!ENTITY e2 "&e3;">
<!ENTITY e3 "&e1;">
]>
<doc a="&e1;"></doc>

'