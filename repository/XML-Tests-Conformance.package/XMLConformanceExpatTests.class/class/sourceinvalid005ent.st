xml source
sourceinvalid005ent
	"Source file: xmltest/invalid/005.ent"

	^ '<!ENTITY % e ">">
<!ELEMENT doc (#PCDATA) %e;
'