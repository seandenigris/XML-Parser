xml source
sourcevalidsa094xml
	"Source file: xmltest/valid/sa/094.xml"

	^ '<!DOCTYPE doc [
<!ENTITY % e "foo">
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a1 CDATA "%e;">
]>
<doc></doc>
'