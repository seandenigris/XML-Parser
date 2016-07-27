source
sourcexmltestnotwfsa092xml
	^ '<!DOCTYPE doc [
<!ENTITY e "<foo a=''&#38;''></foo>">
]>
<doc>&e;</doc>
'