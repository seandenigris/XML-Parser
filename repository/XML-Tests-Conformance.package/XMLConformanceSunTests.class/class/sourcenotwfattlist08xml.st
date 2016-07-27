xml source
sourcenotwfattlist08xml
	"Source file: sun/not-wf/attlist08.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- SGML-ism:  illegal attribute default -->

    <!ATTLIST root
	language	CDATA	#CURRENT
	>

]>

<root/>
'