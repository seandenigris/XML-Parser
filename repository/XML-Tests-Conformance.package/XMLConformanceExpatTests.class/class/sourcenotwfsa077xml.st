xml source
sourcenotwfsa077xml
	"Source file: xmltest/not-wf/sa/077.xml"

	^ '<!DOCTYPE doc [
<!ENTITY foo "&bar;">
]>
<doc a="&foo;"></doc>
'