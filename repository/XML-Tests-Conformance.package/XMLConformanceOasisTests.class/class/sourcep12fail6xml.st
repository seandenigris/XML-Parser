xml source
sourcep12fail6xml
	"Source file: oasis/p12fail6.xml"

	^ '<!--Inability to resolve a notation should not be reported as an error-->
<!DOCTYPE doc
[
<!ELEMENT doc EMPTY>
<!NOTATION not1 PUBLIC "&amp;">
]>
<doc/>
'