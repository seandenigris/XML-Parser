xml source
sourceinvalidid07xml
	"Source file: sun/invalid/id07.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root ANY>
    <!ATTLIST root
	id	ID	#IMPLIED
	idref	IDREF	#IMPLIED
	idrefs	IDREFS	#IMPLIED
	>
]>

<!-- Values of type IDREFS must match the names production -->

<root idrefs="d36 36d">
</root>



'