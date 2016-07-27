xml source
sourcevalidextsa001xml
	"Source file: xmltest/valid/ext-sa/001.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "001.ent">
]>
<doc>&e;</doc>
'