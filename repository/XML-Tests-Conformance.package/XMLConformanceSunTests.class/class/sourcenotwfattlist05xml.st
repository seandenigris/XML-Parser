xml source
sourcenotwfattlist05xml
	"Source file: sun/not-wf/attlist05.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- SGML-ism:  illegal attribute types -->

    <!ATTLIST root
	numbers	NUMBERS	"1 2 3 4"
	>

]>

<root/>

'