xml source
sourcevalidsa115xml
	"Source file: xmltest/valid/sa/115.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e1 "&e2;">
<!ENTITY e2 "v">
]>
<doc>&e1;</doc>
'