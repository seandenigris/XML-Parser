xml source
sourcenotwfsa120xml
	"Source file: xmltest/not-wf/sa/120.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "&#38;">
]>
<doc>
&e;
</doc>
'