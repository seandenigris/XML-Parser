xml source
sourcenotwfsa182xml
	"Source file: xmltest/not-wf/sa/182.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "&#60;!--">
<!ELEMENT doc (#PCDATA)>
]>
<doc>&e;--></doc>
'