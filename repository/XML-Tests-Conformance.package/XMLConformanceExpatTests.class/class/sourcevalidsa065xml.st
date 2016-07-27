xml source
sourcevalidsa065xml
	"Source file: xmltest/valid/sa/065.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "&#60;">
<!ELEMENT doc (#PCDATA)>
]>
<doc></doc>
'