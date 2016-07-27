xml source
sourcevalidextsa005xml
	"Source file: xmltest/valid/ext-sa/005.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (e*)>
<!ELEMENT e EMPTY>
<!ENTITY e SYSTEM "005.ent">
]>
<doc>&e;</doc>
'