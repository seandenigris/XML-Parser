xml source
sourcenotwfsa119xml
	"Source file: xmltest/not-wf/sa/119.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "&#38;">
]>
<doc>
&e;#38;
</doc>
'