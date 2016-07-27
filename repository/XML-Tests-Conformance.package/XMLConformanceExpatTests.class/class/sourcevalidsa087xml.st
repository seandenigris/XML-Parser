xml source
sourcevalidsa087xml
	"Source file: xmltest/valid/sa/087.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "<foo/&#62;">
<!ELEMENT doc (foo)>
<!ELEMENT foo EMPTY>
]>
<doc>&e;</doc>
'