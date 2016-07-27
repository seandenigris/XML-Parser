xml source
sourceinvalidnotsa022ent
	"Source file: xmltest/invalid/not-sa/022.ent"

	^ '<!ENTITY % e "INCLUDE[">
<!ELEMENT doc (#PCDATA)>
<![ %e; <!ATTLIST doc a1 CDATA "v1"> ]]>
'