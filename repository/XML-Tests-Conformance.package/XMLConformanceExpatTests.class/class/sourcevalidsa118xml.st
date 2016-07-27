xml source
sourcevalidsa118xml
	"Source file: xmltest/valid/sa/118.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY rsqb "]]">
]>
<doc>&rsqb;</doc>
'