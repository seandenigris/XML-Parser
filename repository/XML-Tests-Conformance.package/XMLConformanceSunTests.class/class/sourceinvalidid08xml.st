xml source
sourceinvalidid08xml
	"Source file: sun/invalid/id08.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root ANY>
    <!ATTLIST root
	id	ID	#IMPLIED
	idref	IDREF	#IMPLIED
	>
]>

<!-- each name must match the value of an id attribute on some element -->

<root idref="d36d">
</root>


'