xml source
sourcep43fail1xml
	"Source file: oasis/p43fail1.xml"

	^ '<!DOCTYPE elem
[
<!ELEMENT elem (#PCDATA|elem)*>
<!ENTITY ent "<elem>CharData</elem>">
]>
<elem>
<!ENTITY badent "bad">
</elem>
'