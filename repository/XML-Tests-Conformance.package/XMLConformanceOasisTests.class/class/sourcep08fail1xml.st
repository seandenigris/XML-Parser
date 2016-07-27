xml source
sourcep08fail1xml
	"Source file: oasis/p08fail1.xml"

	^ '<!--note: non-validating parsers may accept this document-->
<!DOCTYPE doc
[
<!ELEMENT doc (A*)>
<!ELEMENT A EMPTY>
<!ATTLIST A att NMTOKENS #IMPLIED>
]>
<doc>
<A att=""/>
</doc>'