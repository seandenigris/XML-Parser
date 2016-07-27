xml source
sourcevalidsa013xml
	"Source file: xmltest/valid/sa/013.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc _.-0123456789 CDATA #IMPLIED>
]>
<doc _.-0123456789="v1"></doc>
'