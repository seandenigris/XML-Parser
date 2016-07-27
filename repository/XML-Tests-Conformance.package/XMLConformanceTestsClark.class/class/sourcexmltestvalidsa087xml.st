source
sourcexmltestvalidsa087xml
	^ '<!DOCTYPE doc [
<!ENTITY e "<foo/&#62;">
<!ELEMENT doc (foo)>
<!ELEMENT foo EMPTY>
]>
<doc>&e;</doc>
'