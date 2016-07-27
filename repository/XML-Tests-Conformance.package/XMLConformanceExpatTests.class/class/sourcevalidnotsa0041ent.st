xml source
sourcevalidnotsa0041ent
	"Source file: xmltest/valid/not-sa/004-1.ent"

	^ '<!ELEMENT doc EMPTY>
<!ENTITY % e1 SYSTEM "004-2.ent">
<!ENTITY % e2 "%e1;">
%e1;
'