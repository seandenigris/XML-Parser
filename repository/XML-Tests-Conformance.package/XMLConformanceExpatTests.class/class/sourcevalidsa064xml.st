xml source
sourcevalidsa064xml
	"Source file: xmltest/valid/sa/064.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
]>
<doc>&#x10000;&#x10FFFD;</doc>
'