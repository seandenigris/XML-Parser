source
sourceoasisp43fail1xml
	^ '<!DOCTYPE elem
[
<!ELEMENT elem (#PCDATA|elem)*>
<!ENTITY ent "<elem>CharData</elem>">
]>
<elem>
<!ENTITY badent "bad">
</elem>
'