xml source
sourcevalidsa040xml
	"Source file: xmltest/valid/sa/040.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a1 CDATA #IMPLIED>
]>
<doc a1="&quot;&lt;&amp;&gt;&apos;"></doc>
'