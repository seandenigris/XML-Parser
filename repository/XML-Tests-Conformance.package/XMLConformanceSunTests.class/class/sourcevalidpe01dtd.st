xml source
sourcevalidpe01dtd
	"Source file: sun/valid/pe01.dtd"

	^ '<!ENTITY % bad-pe SYSTEM "pe01.ent">
<!ELEMENT root EMPTY>
<!ATTLIST root
    something	CDATA			"%not-pe;"
    evil	(doctor | scott)	"doctor"
    >
'