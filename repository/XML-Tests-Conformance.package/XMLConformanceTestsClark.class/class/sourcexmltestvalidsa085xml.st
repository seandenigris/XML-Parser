source
sourcexmltestvalidsa085xml
	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY % e "<foo>">
<!ENTITY e "">
]>
<doc>&e;</doc>
'