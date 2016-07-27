xml source
sourcevalidsa081xml
	"Source file: xmltest/valid/sa/081.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (a, b, c)>
<!ELEMENT a (a?)>
<!ELEMENT b (b*)>
<!ELEMENT c (a | b)+>
]>
<doc><a/><b/><c><a/></c></doc>
'