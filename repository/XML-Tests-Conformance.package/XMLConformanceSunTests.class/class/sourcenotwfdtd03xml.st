xml source
sourcenotwfdtd03xml
	"Source file: sun/not-wf/dtd03.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!-- correct PE ref syntax -->
    <!ENTITY % foo "<!ATTLIST root>">
    %foo
    ;
]>

<root/>
'