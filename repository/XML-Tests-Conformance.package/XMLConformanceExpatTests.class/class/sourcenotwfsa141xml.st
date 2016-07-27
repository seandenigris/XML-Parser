xml source
sourcenotwfsa141xml
	"Source file: xmltest/not-wf/sa/141.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "<X&#xe5c;></X&#xe5c;>">
]>
<doc>&e;</doc>
'