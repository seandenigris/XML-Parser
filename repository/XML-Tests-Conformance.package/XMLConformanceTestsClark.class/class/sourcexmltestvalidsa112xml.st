source
sourcexmltestvalidsa112xml
	^ '<!DOCTYPE doc [
<!ELEMENT doc (a | b)>
<!ELEMENT a (#PCDATA)>
]>
<doc><a></a></doc>
'