xml source
sourcenotwfsa183xml
	"Source file: xmltest/not-wf/sa/183.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA | foo*)* >
<!ELEMENT foo EMPTY>
]>
<doc></doc>
'