xml source
sourcevalidsa068xml
	"Source file: xmltest/valid/sa/068.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "&#13;">
]>
<doc>&e;</doc>
'