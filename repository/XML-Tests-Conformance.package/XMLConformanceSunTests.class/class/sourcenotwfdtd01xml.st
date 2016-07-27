xml source
sourcenotwfdtd01xml
	"Source file: sun/not-wf/dtd01.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root (foo, bar? | foo)>
	<!-- comma swapped for vertical bar -->
    <!ELEMENT foo EMPTY>
    <!ELEMENT bar EMPTY>
]>

<root> <foo/> <foo/> </root>
'