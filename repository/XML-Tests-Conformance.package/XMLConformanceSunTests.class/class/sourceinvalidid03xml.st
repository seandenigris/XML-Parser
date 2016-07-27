xml source
sourceinvalidid03xml
	"Source file: sun/invalid/id03.xml"

	^ '<!DOCTYPE root SYSTEM "../valid/sa.dtd" [
    <!ATTLIST attributes
	id2	ID	#IMPLIED
	>
]>

<!-- no element type may have more than one ID attribute specified -->

<root/>

'