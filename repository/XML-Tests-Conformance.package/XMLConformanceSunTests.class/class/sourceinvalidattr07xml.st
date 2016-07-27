xml source
sourceinvalidattr07xml
	"Source file: sun/invalid/attr07.xml"

	^ '<!DOCTYPE arbor [
<!ELEMENT arbor EMPTY>
<!ATTLIST arbor
    type	(fruit | vegetable)	"fruit"
    >
    <!-- tests the ''must match one of the nmtokens included in the
	declaration'' part of the "Enumeration" VC -->
]>
<arbor type="money"/>

'