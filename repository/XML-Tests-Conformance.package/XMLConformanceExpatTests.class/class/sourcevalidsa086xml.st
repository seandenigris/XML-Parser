xml source
sourcevalidsa086xml
	"Source file: xmltest/valid/sa/086.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "">
<!ENTITY e "<foo>">
]>
<doc>&e;</doc>
'