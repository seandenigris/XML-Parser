xml source
sourcenotwfsa066xml
	"Source file: xmltest/not-wf/sa/066.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a1 (foo|bar)#IMPLIED>
]>
<doc></doc>
'