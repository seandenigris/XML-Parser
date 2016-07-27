xml source
sourcenotwfsa159xml
	"Source file: xmltest/not-wf/sa/159.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "<![CDATA[Tim & Michael]]>">
]>
<doc>&e;</doc>
'