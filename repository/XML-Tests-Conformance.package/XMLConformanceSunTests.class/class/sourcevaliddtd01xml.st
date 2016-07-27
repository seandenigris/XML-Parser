xml source
sourcevaliddtd01xml
	"Source file: sun/valid/dtd01.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!ENTITY % PE "this is a PE">
    <!-- %these; %are; %not; %PEs; -->
]>
<root/>
'