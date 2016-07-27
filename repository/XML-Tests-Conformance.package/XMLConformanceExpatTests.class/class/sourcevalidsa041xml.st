xml source
sourcevalidsa041xml
	"Source file: xmltest/valid/sa/041.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a1 CDATA #IMPLIED>
]>
<doc a1="&#65;"></doc>
'