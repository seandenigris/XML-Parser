xml source
sourcenotwfdecl01xml
	"Source file: sun/not-wf/decl01.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!ENTITY % ent01 SYSTEM "decl01.ent">

    <!-- the entity is an illegal PE -->
    %ent01;
]>
<root/>
'