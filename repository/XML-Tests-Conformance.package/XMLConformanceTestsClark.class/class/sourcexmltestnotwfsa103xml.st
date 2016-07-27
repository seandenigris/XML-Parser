source
sourcexmltestnotwfsa103xml
	^ '<!DOCTYPE doc [
<!ENTITY e "&#60;foo>">
]>
<doc>&e;</doc>
'