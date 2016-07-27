xml source
sourcenotwfsa160xml
	"Source file: xmltest/not-wf/sa/160.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY % e "">
<!ENTITY foo "%e;">
]>
<doc></doc>
'