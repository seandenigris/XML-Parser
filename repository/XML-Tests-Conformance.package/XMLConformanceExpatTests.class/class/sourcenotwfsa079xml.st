xml source
sourcenotwfsa079xml
	"Source file: xmltest/not-wf/sa/079.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e1 "&e2;">
<!ENTITY e2 "&e3;">
<!ENTITY e3 "&e1;">
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA "&e1;">
]>
<doc></doc>
'