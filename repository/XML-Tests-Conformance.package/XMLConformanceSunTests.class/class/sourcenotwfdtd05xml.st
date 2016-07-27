xml source
sourcenotwfdtd05xml
	"Source file: sun/not-wf/dtd05.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!-- SYSTEM id must be quoted -->
    <!ENTITY foo SYSTEM elvis.ent>
]>

<root/>
'