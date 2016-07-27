xml source
sourcevalidextsa014xml
	"Source file: xmltest/valid/ext-sa/014.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "014.ent">
]>
<doc>&e;</doc>
'