xml source
sourcevalidextsa007xml
	"Source file: xmltest/valid/ext-sa/007.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "007.ent">
]>
<doc>X&e;Z</doc>
'