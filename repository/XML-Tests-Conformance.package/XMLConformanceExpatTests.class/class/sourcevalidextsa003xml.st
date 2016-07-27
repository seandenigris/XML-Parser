xml source
sourcevalidextsa003xml
	"Source file: xmltest/valid/ext-sa/003.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "003.ent">
]>
<doc>&e;</doc>
'