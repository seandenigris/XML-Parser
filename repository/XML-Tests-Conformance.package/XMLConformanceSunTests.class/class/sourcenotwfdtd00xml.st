xml source
sourcenotwfdtd00xml
	"Source file: sun/not-wf/dtd00.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root (foo, bar? foo)>
	<!-- comma omitted -->
    <!ELEMENT foo EMPTY>
    <!ELEMENT bar EMPTY>
]>

<root> <foo/> <foo/> </root>
'