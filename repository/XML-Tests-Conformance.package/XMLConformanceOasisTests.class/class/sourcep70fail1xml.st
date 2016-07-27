xml source
sourcep70fail1xml
	"Source file: oasis/p70fail1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc (#PCDATA)>
<!ENTITY & bad "replacement text">
]>
<doc/>
'