xml source
sourcevalidextsa012xml
	"Source file: xmltest/valid/ext-sa/012.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e1 "&e2;">
<!ENTITY e2 "&e3;">
<!ENTITY e3 SYSTEM "012.ent">
<!ENTITY e4 "&e5;">
<!ENTITY e5 "(e5)">
<!ELEMENT doc (#PCDATA)>
]>
<doc>&e1;</doc>
'