xml source
sourceinvalid002ent
	"Source file: xmltest/invalid/002.ent"

	^ '<!ENTITY % e "(#PCDATA">
<!ELEMENT doc %e;)>
'