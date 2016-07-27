xml source
sourcevalidextsa011xml
	"Source file: xmltest/valid/ext-sa/011.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e PUBLIC "a not very interesting file" "011.ent">
]>
<doc>&e;</doc>
'