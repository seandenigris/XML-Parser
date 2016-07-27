xml source
sourcep46pass1xml
	"Source file: oasis/p46pass1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc ANY>
<!ELEMENT a EMPTY>
<!ELEMENT b (#PCDATA)*>
<!ELEMENT c (a,b)>
]>
<doc/>'