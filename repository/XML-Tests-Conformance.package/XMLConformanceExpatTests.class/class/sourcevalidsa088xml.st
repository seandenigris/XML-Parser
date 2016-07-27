xml source
sourcevalidsa088xml
	"Source file: xmltest/valid/sa/088.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "&lt;foo>">
]>
<doc>&e;</doc>
'