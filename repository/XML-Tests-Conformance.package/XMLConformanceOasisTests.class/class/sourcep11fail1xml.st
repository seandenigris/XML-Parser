xml source
sourcep11fail1xml
	"Source file: oasis/p11fail1.xml"

	^ '<!--Inability to resolve a notation should not be reported as an error-->
<!DOCTYPE doc
[
<!ELEMENT doc EMPTY>
<!NOTATION not1 SYSTEM ''a">
]>
<doc/>
'