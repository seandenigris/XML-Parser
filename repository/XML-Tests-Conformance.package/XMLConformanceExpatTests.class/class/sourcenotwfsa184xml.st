xml source
sourcenotwfsa184xml
	"Source file: xmltest/not-wf/sa/184.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA | (foo))* >
<!ELEMENT foo EMPTY>
]>
<doc></doc>

'