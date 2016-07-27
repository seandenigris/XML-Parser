xml source
sourcevalidnotsa026xml
	"Source file: xmltest/valid/not-sa/026.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc ANY>
<!ENTITY % e SYSTEM "026.ent">
%e;
<!ATTLIST doc a1 CDATA "x1" a2 CDATA "x2">
]>
<doc></doc>
'