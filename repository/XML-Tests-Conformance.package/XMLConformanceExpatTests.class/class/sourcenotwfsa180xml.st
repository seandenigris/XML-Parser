xml source
sourcenotwfsa180xml
	"Source file: xmltest/not-wf/sa/180.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA "&e;">
<!ENTITY e "v">
]>
<doc></doc>
'