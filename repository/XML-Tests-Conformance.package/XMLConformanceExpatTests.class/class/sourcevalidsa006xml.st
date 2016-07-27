xml source
sourcevalidsa006xml
	"Source file: xmltest/valid/sa/006.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a1 CDATA #IMPLIED>
]>
<doc a1=''v1''></doc>
'