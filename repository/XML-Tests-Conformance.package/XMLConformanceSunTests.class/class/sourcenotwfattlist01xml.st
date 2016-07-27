xml source
sourcenotwfattlist01xml
	"Source file: sun/not-wf/attlist01.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- SGML-ism:  illegal attribute types -->

    <!ATTLIST root
	number	NUTOKEN	"1"
	>

]>

<root/>
'