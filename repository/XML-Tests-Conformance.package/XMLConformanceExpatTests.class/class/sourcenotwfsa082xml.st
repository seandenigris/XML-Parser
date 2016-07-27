xml source
sourcenotwfsa082xml
	"Source file: xmltest/not-wf/sa/082.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e SYSTEM "nul">
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA "&e;">
]>
<doc></doc>
'