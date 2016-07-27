xml source
sourcevalidsa066xml
	"Source file: xmltest/valid/sa/066.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a1 CDATA #IMPLIED>
<!-- 34 is double quote -->
<!ENTITY e1 "&#34;">
]>
<doc a1="&e1;"></doc>
'