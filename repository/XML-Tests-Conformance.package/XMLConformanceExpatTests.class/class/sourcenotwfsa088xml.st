xml source
sourcenotwfsa088xml
	"Source file: xmltest/not-wf/sa/088.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ATTLIST doc a CDATA #IMPLIED>
<!ENTITY e ''"''>
]>
<doc a="&e;></doc>
'