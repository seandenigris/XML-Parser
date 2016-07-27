source
sourcexmltestvalidsa117xml
	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY rsqb "]">
]>
<doc>&rsqb;</doc>
'