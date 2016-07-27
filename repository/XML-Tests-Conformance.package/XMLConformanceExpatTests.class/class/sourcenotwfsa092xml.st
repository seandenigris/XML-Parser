xml source
sourcenotwfsa092xml
	"Source file: xmltest/not-wf/sa/092.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "<foo a=''&#38;''></foo>">
]>
<doc>&e;</doc>
'