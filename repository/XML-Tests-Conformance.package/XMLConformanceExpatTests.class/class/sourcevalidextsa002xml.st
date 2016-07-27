xml source
sourcevalidextsa002xml
	"Source file: xmltest/valid/ext-sa/002.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "002.ent">
]>
<doc>&e;</doc>
'