xml source
sourcevalidextsa004xml
	"Source file: xmltest/valid/ext-sa/004.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "004.ent">
]>
<doc>&e;</doc>
'