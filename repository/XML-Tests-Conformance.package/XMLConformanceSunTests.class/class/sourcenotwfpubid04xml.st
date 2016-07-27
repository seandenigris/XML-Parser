xml source
sourcenotwfpubid04xml
	"Source file: sun/not-wf/pubid04.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- illegal public ID characters -->

    <!ENTITY e PUBLIC "{ illegal }" "ignored">
]>

<root/>

'