xml source
sourcevalidsa027xml
	"Source file: xmltest/valid/sa/027.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (foo*)>
<!ELEMENT foo ANY>
]>
<doc><foo/><foo></foo></doc>
'