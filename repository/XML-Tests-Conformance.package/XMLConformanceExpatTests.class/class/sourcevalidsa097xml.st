xml source
sourcevalidsa097xml
	"Source file: xmltest/valid/sa/097.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY % e SYSTEM "097.ent">
<!ATTLIST doc a1 CDATA "v1">
%e;
<!ATTLIST doc a2 CDATA "v2">
]>
<doc></doc>
'