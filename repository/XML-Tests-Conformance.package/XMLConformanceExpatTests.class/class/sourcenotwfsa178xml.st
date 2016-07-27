xml source
sourcenotwfsa178xml
	"Source file: xmltest/not-wf/sa/178.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA #IMPLIED>
]>
<doc a="&#34;></doc>
'