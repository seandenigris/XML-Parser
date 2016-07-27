xml source
sourceinvalidattr13xml
	"Source file: sun/invalid/attr13.xml"

	^ '<!DOCTYPE root [

<!ELEMENT root EMPTY>
<!ATTLIST root
    value	NMTOKEN	"alpha/beta"
    >
    <!-- tests the "attribute default legal" vc -->
]>

<root value="brittannica"/>

'