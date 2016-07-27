xml source
sourcevalidsa105xml
	"Source file: xmltest/valid/sa/105.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA #IMPLIED>
]>
<doc a="x&#9;y"></doc>
'