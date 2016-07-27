xml source
sourcenotwfsa071xml
	"Source file: xmltest/not-wf/sa/071.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e1 "&e2;">
<!ENTITY e2 "&e3;">
<!ENTITY e3 "&e1;">
]>
<doc>&e1;</doc>
'