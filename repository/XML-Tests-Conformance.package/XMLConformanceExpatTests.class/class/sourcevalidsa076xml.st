xml source
sourcevalidsa076xml
	"Source file: xmltest/valid/sa/076.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a NOTATION (n1|n2) #IMPLIED>
<!NOTATION n1 SYSTEM "http://www.w3.org/">
<!NOTATION n2 SYSTEM "http://www.w3.org/">
]>
<doc></doc>
'