xml source
sourcevalidsa070xml
	"Source file: xmltest/valid/sa/070.xml"

	^ '<!DOCTYPE doc [
<!ENTITY % e "<!ELEMENT doc (#PCDATA)>">
%e;
]>
<doc></doc>
'