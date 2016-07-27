xml source
sourcevalidnotsa018ent
	"Source file: xmltest/valid/not-sa/018.ent"

	^ '<!ELEMENT doc (#PCDATA)>
<!ENTITY % e "''v1''">
<!ATTLIST doc a1 CDATA %e;>
'