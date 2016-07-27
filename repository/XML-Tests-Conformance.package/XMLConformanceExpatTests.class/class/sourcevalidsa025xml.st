xml source
sourcevalidsa025xml
	"Source file: xmltest/valid/sa/025.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (foo*)>
<!ELEMENT foo (#PCDATA)>
]>
<doc><foo/><foo></foo></doc>
'