xml source
sourcenotwfattlist03xml
	"Source file: sun/not-wf/attlist03.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!-- SGML-ism:  illegal attribute types -->

    <!ATTLIST root
	choice	(a,b,c)	"a"
	>

]>

<root/>

'