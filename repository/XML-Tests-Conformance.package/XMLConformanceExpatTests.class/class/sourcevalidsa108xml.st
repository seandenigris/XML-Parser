xml source
sourcevalidsa108xml
	"Source file: xmltest/valid/sa/108.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "
">
<!ATTLIST doc a CDATA #IMPLIED>
]>
<doc a="x&e;y"></doc>
'