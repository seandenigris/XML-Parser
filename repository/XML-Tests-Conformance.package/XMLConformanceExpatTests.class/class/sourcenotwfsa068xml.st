xml source
sourcenotwfsa068xml
	"Source file: xmltest/not-wf/sa/068.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a1 NOTATION(foo) #IMPLIED>
]>
<doc></doc>
'