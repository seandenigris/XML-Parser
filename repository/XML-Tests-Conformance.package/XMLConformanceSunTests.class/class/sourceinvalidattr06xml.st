xml source
sourceinvalidattr06xml
	"Source file: sun/invalid/attr06.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root EMPTY>
<!ATTLIST root
    token	NMTOKEN		#REQUIRED
    >

    <!-- tests the "name token'' VC for an NMTOKENS value -->
]>
<root token="now is the time!?"/>
'