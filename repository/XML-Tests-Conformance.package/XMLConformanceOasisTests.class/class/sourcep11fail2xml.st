xml source
sourcep11fail2xml
	"Source file: oasis/p11fail2.xml"

	^ '<!--Inability to resolve a notation should not be reported as an error-->
<!DOCTYPE doc
[
<!ELEMENT doc EMPTY>
<!NOTATION not1 SYSTEM """>
]>
<doc/>
'