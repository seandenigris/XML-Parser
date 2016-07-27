xml source
sourcevalidnotsa025ent
	"Source file: xmltest/valid/not-sa/025.ent"

	^ '<!ELEMENT doc EMPTY>
<!ENTITY % e "x">
<!ENTITY % e "y">
<!ENTITY % v "''%e;''">
<!ATTLIST doc a1 CDATA %v;>
'