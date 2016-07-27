xml source
sourcenotwfpubid01xml
	"Source file: sun/not-wf/pubid01.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- illegal public ID characters -->

    <!ENTITY e PUBLIC "this isn&apos;t allowed" "ignored">
]>

<root/>
'