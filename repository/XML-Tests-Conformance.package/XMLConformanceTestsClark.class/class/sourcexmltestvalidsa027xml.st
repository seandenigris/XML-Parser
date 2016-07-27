source
sourcexmltestvalidsa027xml
	^ '<!DOCTYPE doc [
<!ELEMENT doc (foo*)>
<!ELEMENT foo ANY>
]>
<doc><foo/><foo></foo></doc>
'