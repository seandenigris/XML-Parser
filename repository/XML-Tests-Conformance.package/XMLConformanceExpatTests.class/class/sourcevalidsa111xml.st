xml source
sourcevalidsa111xml
	"Source file: xmltest/valid/sa/111.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a NMTOKENS #IMPLIED>
]>
<doc a="&#32;x&#32;&#32;y&#32;"></doc>
'