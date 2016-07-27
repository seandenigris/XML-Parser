xml source
sourcenotwfdtd02xml
	"Source file: sun/not-wf/dtd02.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!-- correct PE ref syntax -->
    <!ENTITY % foo "<!ATTLIST root>">
    % foo;
]>

<root/>
'