xml source
sourcenotwfsa090xml
	"Source file: xmltest/not-wf/sa/090.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "<foo a=''&#60;''></foo>">
]>
<doc>&e;</doc>
'