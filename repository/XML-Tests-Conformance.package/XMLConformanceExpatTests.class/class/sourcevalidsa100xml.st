xml source
sourcevalidsa100xml
	"Source file: xmltest/valid/sa/100.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e PUBLIC ";!*#@$_%" "100.xml">
<!ELEMENT doc (#PCDATA)>
]>
<doc></doc>
'