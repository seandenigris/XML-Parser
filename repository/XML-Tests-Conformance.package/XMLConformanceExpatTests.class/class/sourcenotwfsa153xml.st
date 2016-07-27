xml source
sourcenotwfsa153xml
	"Source file: xmltest/not-wf/sa/153.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY e "<?xml encoding=''UTF-8''?>">
]>
<doc>&e;</doc>
'