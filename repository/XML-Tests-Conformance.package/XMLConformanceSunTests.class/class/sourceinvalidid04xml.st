xml source
sourceinvalidid04xml
	"Source file: sun/invalid/id04.xml"

	^ '<!DOCTYPE root [
    <!ATTLIST root
	id2	ID	"x23"
	>
]>

<!-- an ID attribute must have a declared default
    of #IMPLIED or #REQUIRED
-->

<root/>

'