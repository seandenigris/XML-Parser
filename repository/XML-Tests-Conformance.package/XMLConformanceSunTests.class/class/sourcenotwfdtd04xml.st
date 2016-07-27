xml source
sourcenotwfdtd04xml
	"Source file: sun/not-wf/dtd04.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!-- PUBLIC id must be quoted -->
    <!ENTITY foo PUBLIC -//BadCorp//DTD-foo-1.0//EN "elvis.ent">
]>

<root/>
'