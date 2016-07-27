xml source
sourcenotwfsa074xml
	"Source file: xmltest/not-wf/sa/074.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "</foo><foo>">
]>
<doc>
<foo>&e;</foo>
</doc>
'