xml source
sourcenotwfattlist07xml
	"Source file: sun/not-wf/attlist07.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- SGML-ism:  illegal attribute types -->

    <!ATTLIST root
	number	NAMES	"The King"
	>

]>

<root/>

'