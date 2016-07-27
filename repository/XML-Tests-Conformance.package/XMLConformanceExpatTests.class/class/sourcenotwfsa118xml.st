xml source
sourcenotwfsa118xml
	"Source file: xmltest/not-wf/sa/118.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "#">
]>
<doc>&&e;97;</doc>
'