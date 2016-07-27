xml source
sourcep12fail4xml
	"Source file: oasis/p12fail4.xml"

	^ '<!--Inability to resolve a notation should not be reported as an error-->
<!DOCTYPE doc
[
<!ELEMENT doc EMPTY>
<!NOTATION not1 PUBLIC ">">
]>
<doc/>
'