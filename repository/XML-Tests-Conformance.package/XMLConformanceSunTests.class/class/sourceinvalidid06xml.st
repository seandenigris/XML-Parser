xml source
sourceinvalidid06xml
	"Source file: sun/invalid/id06.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root ANY>
    <!ATTLIST root
	id	ID	#IMPLIED
	idref	IDREF	#IMPLIED
	>
]>

<!-- Values of type IDREF must match the name production -->

<root idref="36d">
</root>


'