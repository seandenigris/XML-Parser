xml source
sourcep43fail2xml
	"Source file: oasis/p43fail2.xml"

	^ '<!DOCTYPE elem
[
<!ELEMENT elem (#PCDATA|elem)*>
<!ENTITY ent "<elem>CharData</elem>">
]>
<elem>
<![IGNORE[This was valid in SGML, but not XML]]>
</elem>
'