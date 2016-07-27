xml source
sourcevalidextsa008xml
	"Source file: xmltest/valid/ext-sa/008.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "008.ent">
]>
<doc>X&e;Z</doc>
'