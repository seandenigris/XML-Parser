xml source
sourceinvalidattr08xml
	"Source file: sun/invalid/attr08.xml"

	^ '<!DOCTYPE palimpest [
<!ELEMENT palimpest EMPTY>
<!ATTLIST palimpest
    xmlns CDATA #FIXED "http://java.sun.com/historical"
    >
    <!-- tests the "fixed attribute default" vc -->
]>

<palimpest xmlns="http://over.the.rainbow.com/somewhere"/>
'