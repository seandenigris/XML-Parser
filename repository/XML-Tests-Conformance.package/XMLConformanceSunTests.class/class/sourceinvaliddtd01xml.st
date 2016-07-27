xml source
sourceinvaliddtd01xml
	"Source file: sun/invalid/dtd01.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT y (#PCDATA|x|x)*>
    <!-- element types can''t repeat in mixed content -->
    <!ELEMENT root ANY>
]>

<root/>
'