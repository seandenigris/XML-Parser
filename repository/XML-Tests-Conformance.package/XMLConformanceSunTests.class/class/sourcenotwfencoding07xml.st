xml source
sourcenotwfencoding07xml
	"Source file: sun/not-wf/encoding07.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>

    <!--
	reusing this entity; it''s got no markup decls,
	so it''s legal except for a missing "encoding=...".
    -->
    <!ENTITY empty SYSTEM "dtd07.dtd">
]>
<root>&empty;</root>
'