xml source
sourcenotwfextsa002xml
	"Source file: xmltest/not-wf/ext-sa/002.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e SYSTEM "002.ent">
]>
<doc>&e;</doc>
'