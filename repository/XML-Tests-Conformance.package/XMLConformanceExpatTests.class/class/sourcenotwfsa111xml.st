xml source
sourcenotwfsa111xml
	"Source file: xmltest/not-wf/sa/111.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "foo=''bar''">
]>
<doc &e;></doc>
'