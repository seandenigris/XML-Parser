xml source
sourcevalidnotsa011xml
	"Source file: xmltest/valid/not-sa/011.xml"

	^ '<!DOCTYPE doc [
<!ENTITY % e SYSTEM "011.ent">
%e;
]>
<doc></doc>
'