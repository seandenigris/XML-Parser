xml source
sourcenotwfsa084xml
	"Source file: xmltest/not-wf/sa/084.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e SYSTEM "nul" NDATA n>
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA "&e;">
]>
<doc></doc>
'