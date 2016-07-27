xml source
sourcevalidextsa006xml
	"Source file: xmltest/valid/ext-sa/006.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA|e)*>
<!ELEMENT e EMPTY>
<!ENTITY e SYSTEM "006.ent">
]>
<doc>&e;</doc>
'