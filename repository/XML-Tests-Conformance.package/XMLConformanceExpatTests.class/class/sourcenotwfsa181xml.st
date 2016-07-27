xml source
sourcenotwfsa181xml
	"Source file: xmltest/not-wf/sa/181.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "&#60;![CDATA[">
<!ELEMENT doc (#PCDATA)>
]>
<doc>&e;]]></doc>
'