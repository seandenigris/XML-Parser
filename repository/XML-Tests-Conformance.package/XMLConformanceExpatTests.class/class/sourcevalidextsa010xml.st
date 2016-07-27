xml source
sourcevalidextsa010xml
	"Source file: xmltest/valid/ext-sa/010.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "010.ent">
]>
<doc>&e;</doc>
'