xml source
sourcevalidsa043xml
	"Source file: xmltest/valid/sa/043.xml"

	^ '<!DOCTYPE doc [
<!ATTLIST doc a1 CDATA #IMPLIED>
<!ELEMENT doc (#PCDATA)>
]>
<doc a1="foo
bar"></doc>
'