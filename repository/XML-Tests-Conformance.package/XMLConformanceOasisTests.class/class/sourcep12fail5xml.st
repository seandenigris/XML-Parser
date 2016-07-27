xml source
sourcep12fail5xml
	"Source file: oasis/p12fail5.xml"

	^ '<!--Inability to resolve a notation should not be reported as an error-->
<!DOCTYPE doc
[
<!ELEMENT doc EMPTY>
<!NOTATION not1 PUBLIC "<">
]>
<doc/>
'