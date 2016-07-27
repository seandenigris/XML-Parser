xml source
sourcevalidsa117xml
	"Source file: xmltest/valid/sa/117.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY rsqb "]">
]>
<doc>&rsqb;</doc>
'