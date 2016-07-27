xml source
sourcep08pass1xml
	"Source file: oasis/p08pass1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc (A*)>
<!ELEMENT A EMPTY>
<!ATTLIST A att NMTOKENS #IMPLIED>
]>
<doc>
<A att="abc"/><A att="abc def . :"/><A att="
abc
def
"/>
</doc>'