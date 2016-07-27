source
sourcexmltestnotwfsa159xml
	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "<![CDATA[Tim & Michael]]>">
]>
<doc>&e;</doc>
'