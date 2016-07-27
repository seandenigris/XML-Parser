xml source
sourcevalidextsa009xml
	"Source file: xmltest/valid/ext-sa/009.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "009.ent">
]>
<doc>&e;</doc>
'