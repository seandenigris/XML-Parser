xml source
sourcevalidsa085xml
	"Source file: xmltest/valid/sa/085.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY % e "<foo>">
<!ENTITY e "">
]>
<doc>&e;</doc>
'