xml source
sourcenotwfattlist11xml
	"Source file: sun/not-wf/attlist11.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root ANY>
<!ATTLIST root att1 CDATA #IMPLIED>
<!ATTLIST root att2 CDATA #IMPLIED>
]>
<root att1="value1"att2="value2"/>
    <!-- whitespace required between attributes -->
'