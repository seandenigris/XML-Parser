xml source
sourcevalidsa107xml
	"Source file: xmltest/valid/sa/107.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA #IMPLIED>
]>
<doc a="x&#13;y"></doc>
'