xml source
sourceinvalidid05xml
	"Source file: sun/invalid/id05.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root ANY>
    <!ATTLIST root
	id2	ID	#FIXED "x23"
	>
]>

<!-- an ID attribute must have a declared default
    of #IMPLIED or #REQUIRED
-->

<root/>


'