source
sourcexmltestvalidsa088xml
	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "&lt;foo>">
]>
<doc>&e;</doc>
'