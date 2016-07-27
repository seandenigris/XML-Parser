xml source
sourcenotwfsa162xml
	"Source file: xmltest/not-wf/sa/162.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY % e1 "">
<!ENTITY % e2 "%e1;">
]>
<doc></doc>
'