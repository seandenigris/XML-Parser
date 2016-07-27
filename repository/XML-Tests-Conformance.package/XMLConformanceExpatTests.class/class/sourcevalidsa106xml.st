xml source
sourcevalidsa106xml
	"Source file: xmltest/valid/sa/106.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA #IMPLIED>
]>
<doc a="x&#10;y"></doc>
'