xml source
sourcenotwfsa161xml
	"Source file: xmltest/not-wf/sa/161.xml"

	^ '<!DOCTYPE doc [
<!ENTITY % e "#PCDATA">
<!ELEMENT doc (%e;)>
]>
<doc></doc>
'