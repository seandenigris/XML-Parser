xml source
sourceinvalidattr16xml
	"Source file: sun/invalid/attr16.xml"

	^ '<!DOCTYPE root [

<!ELEMENT root EMPTY>
<!ATTLIST root
    value	(brittannica | worldbook) "encarta"
    >
    <!-- tests the "attribute default legal" vc -->
]>

<root value="brittannica"/>
'