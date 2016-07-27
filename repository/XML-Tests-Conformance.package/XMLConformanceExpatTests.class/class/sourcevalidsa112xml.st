xml source
sourcevalidsa112xml
	"Source file: xmltest/valid/sa/112.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (a | b)>
<!ELEMENT a (#PCDATA)>
]>
<doc><a></a></doc>
'