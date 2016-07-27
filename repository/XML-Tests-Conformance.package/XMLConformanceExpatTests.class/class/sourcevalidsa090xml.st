xml source
sourcevalidsa090xml
	"Source file: xmltest/valid/sa/090.xml"

	^ '<!DOCTYPE doc [
<!ATTLIST e a NOTATION (n) #IMPLIED>
<!ELEMENT doc (e)*>
<!ELEMENT e (#PCDATA)>
<!NOTATION n PUBLIC "whatever">
]>
<doc></doc>
'