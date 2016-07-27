xml source
sourcevalidnotsa0031ent
	"Source file: xmltest/valid/not-sa/003-1.ent"

	^ '<!ELEMENT doc EMPTY>
<!ENTITY % e SYSTEM "003-2.ent">
<!ATTLIST doc a1 CDATA %e; "v1">
'