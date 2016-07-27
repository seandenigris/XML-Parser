xml source
sourcevalidsa091xml
	"Source file: xmltest/valid/sa/091.xml"

	^ '<!DOCTYPE doc [
<!NOTATION n SYSTEM "http://www.w3.org/">
<!ENTITY e SYSTEM "http://www.w3.org/" NDATA n>
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a ENTITY "e">
]>
<doc></doc>
'