source
sourcexmltestvalidsa086xml
	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "">
<!ENTITY e "<foo>">
]>
<doc>&e;</doc>
'