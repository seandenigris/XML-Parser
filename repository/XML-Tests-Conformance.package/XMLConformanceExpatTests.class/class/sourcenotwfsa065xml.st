xml source
sourcenotwfsa065xml
	"Source file: xmltest/not-wf/sa/065.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a1(foo|bar) #IMPLIED>
]>
<doc></doc>
'