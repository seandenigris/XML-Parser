xml source
sourcevalidsa110xml
	"Source file: xmltest/valid/sa/110.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "&#13;&#10;">
<!ATTLIST doc a CDATA #IMPLIED>
]>
<doc a="x&e;y"></doc>
'