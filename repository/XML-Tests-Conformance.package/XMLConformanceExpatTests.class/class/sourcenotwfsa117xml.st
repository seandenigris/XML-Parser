xml source
sourcenotwfsa117xml
	"Source file: xmltest/not-wf/sa/117.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "&#38;">
]>
<doc>&e;#97;</doc>
'