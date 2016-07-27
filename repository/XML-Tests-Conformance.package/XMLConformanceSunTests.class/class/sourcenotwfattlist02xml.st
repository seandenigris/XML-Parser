xml source
sourcenotwfattlist02xml
	"Source file: sun/not-wf/attlist02.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- SGML-ism:  illegal attribute types -->

    <!ATTLIST root
	number	NUTOKENS	"1 2 3"
	>

]>

<root/>

'