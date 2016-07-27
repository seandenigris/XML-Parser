xml source
sourcevalidsa024xml
	"Source file: xmltest/valid/sa/024.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (foo)>
<!ELEMENT foo (#PCDATA)>
<!ENTITY e "&#60;foo></foo>">
]>
<doc>&e;</doc>
'