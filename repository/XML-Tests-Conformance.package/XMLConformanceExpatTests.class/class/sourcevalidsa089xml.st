xml source
sourcevalidsa089xml
	"Source file: xmltest/valid/sa/089.xml"

	^ '<!DOCTYPE doc [
<!ENTITY e "&#x10000;&#x10FFFD;&#x10FFFF;">
<!ELEMENT doc (#PCDATA)>
]>
<doc>&e;</doc>
'