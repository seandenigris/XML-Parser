xml source
sourcevalidsa053xml
	"Source file: xmltest/valid/sa/053.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "<e/>">
<!ELEMENT doc (e)>
<!ELEMENT e EMPTY>
]>
<doc>&e;</doc>
'