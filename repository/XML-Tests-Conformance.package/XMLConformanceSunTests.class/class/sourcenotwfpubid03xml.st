xml source
sourcenotwfpubid03xml
	"Source file: sun/not-wf/pubid03.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- illegal public ID characters -->

    <!ENTITY e PUBLIC "[illegal]" "ignored">
]>

<root/>

'