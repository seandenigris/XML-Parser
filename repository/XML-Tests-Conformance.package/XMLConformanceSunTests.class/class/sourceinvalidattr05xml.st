xml source
sourceinvalidattr05xml
	"Source file: sun/invalid/attr05.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root EMPTY>
<!ATTLIST root
    token	NMTOKEN		#REQUIRED
    >

    <!-- tests the "name token'' VC for an NMTOKEN value -->
]>
<root token="dev@null"/>
'