source
sourcexmltestvalidsa025xml
	^ '<!DOCTYPE doc [
<!ELEMENT doc (foo*)>
<!ELEMENT foo (#PCDATA)>
]>
<doc><foo/><foo></foo></doc>
'