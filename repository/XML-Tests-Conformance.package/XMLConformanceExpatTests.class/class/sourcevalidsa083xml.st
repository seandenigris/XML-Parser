xml source
sourcevalidsa083xml
	"Source file: xmltest/valid/sa/083.xml"

	^ '<!DOCTYPE doc [
<!ENTITY % e PUBLIC ''whatever'' "e.dtd">
<!ELEMENT doc (#PCDATA)>
]>
<doc></doc>
'