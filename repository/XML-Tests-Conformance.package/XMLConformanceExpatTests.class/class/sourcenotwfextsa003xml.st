xml source
sourcenotwfextsa003xml
	"Source file: xmltest/not-wf/ext-sa/003.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "003.ent">
]>
<doc>&e;</doc>
'