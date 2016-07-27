xml source
sourcevalidnotsa024ent
	"Source file: xmltest/valid/not-sa/024.ent"

	^ '<!ELEMENT doc (#PCDATA)>
<!ENTITY % e1 "''v1''">
<!ENTITY % e2 ''a1 CDATA %e1;''>
<!ATTLIST doc %e2;>
'