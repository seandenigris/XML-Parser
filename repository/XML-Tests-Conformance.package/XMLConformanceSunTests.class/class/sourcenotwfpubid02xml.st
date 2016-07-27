xml source
sourcenotwfpubid02xml
	"Source file: sun/not-wf/pubid02.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- illegal public ID characters -->

    <!ENTITY e PUBLIC "<illegal>" "ignored">
]>

<root/>

'