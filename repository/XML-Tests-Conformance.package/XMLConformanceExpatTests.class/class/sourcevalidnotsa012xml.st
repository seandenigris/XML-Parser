xml source
sourcevalidnotsa012xml
	"Source file: xmltest/valid/not-sa/012.xml"

	^ '<!DOCTYPE doc [
<!ENTITY % e SYSTEM "012.ent">
%e;
]>
<doc></doc>
'