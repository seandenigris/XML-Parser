xml source
sourcevalidsa095xml
	"Source file: xmltest/valid/sa/095.xml"

	^ '<!DOCTYPE doc [
<!ATTLIST doc a1 CDATA #IMPLIED>
<!ATTLIST doc a1 NMTOKENS #IMPLIED>
<!ELEMENT doc (#PCDATA)>
]>
<doc a1="1  2"></doc>
'