xml source
sourcevalidsa104xml
	"Source file: xmltest/valid/sa/104.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA #IMPLIED>
]>
<doc a="x	y"></doc>
'