xml source
sourcevalidsa011xml
	"Source file: xmltest/valid/sa/011.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a1 CDATA #IMPLIED a2 CDATA #IMPLIED>
]>
<doc a1="v1" a2="v2"></doc>
'