xml source
sourcep43fail3xml
	"Source file: oasis/p43fail3.xml"

	^ '<!DOCTYPE elem
[
<!ELEMENT elem (#PCDATA|elem)*>
<!ENTITY ent "<elem>CharData</elem>">
]>
<elem>
<![INCLUDE[This was valid in SGML, but not XML]]>
</elem>
'