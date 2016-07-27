xml source
sourcenotwfsa115xml
	"Source file: xmltest/not-wf/sa/115.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "&#38;">
]>
<doc a="&e;"></doc>
'