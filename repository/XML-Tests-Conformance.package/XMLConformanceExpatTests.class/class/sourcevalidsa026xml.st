xml source
sourcevalidsa026xml
	"Source file: xmltest/valid/sa/026.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (foo*)>
<!ELEMENT foo EMPTY>
]>
<doc><foo/><foo></foo></doc>
'