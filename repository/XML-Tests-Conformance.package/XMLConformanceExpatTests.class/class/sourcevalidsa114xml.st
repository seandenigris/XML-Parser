xml source
sourcevalidsa114xml
	"Source file: xmltest/valid/sa/114.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "<![CDATA[&foo;]]>">
]>
<doc>&e;</doc>
'