xml source
sourcenotwfextsa001xml
	"Source file: xmltest/not-wf/ext-sa/001.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e SYSTEM "001.ent">
]>
<doc>&e;</doc>
'