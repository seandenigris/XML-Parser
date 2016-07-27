xml source
sourcep12fail3xml
	"Source file: oasis/p12fail3.xml"

	^ '<!--Inability to resolve a notation should not be reported as an error-->
<!DOCTYPE doc
[
<!ELEMENT doc EMPTY>
<!ENTITY x "x">
<!NOTATION not1 PUBLIC "&x;">
]>
<doc/>
'