xml source
sourcevalidnotsa0311ent
	"Source file: xmltest/valid/not-sa/031-1.ent"

	^ '<!ELEMENT doc (#PCDATA)>
<!ENTITY % e SYSTEM "031-2.ent">
<!ENTITY e "<![CDATA[%e;]]>">
'