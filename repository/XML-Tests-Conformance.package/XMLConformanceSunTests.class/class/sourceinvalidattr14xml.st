xml source
sourceinvalidattr14xml
	"Source file: sun/invalid/attr14.xml"

	^ '<!DOCTYPE root [

<!ELEMENT root EMPTY>
<!ATTLIST root
    value	NMTOKENS	"alpha beta $gamma"
    >
    <!-- tests the "attribute default legal" vc -->
]>

<root value="zeta eta iota"/>


'