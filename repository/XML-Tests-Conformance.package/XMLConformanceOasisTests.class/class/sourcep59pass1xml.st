xml source
sourcep59pass1xml
	"Source file: oasis/p59pass1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc (a|b)*>
<!ELEMENT a EMPTY>
<!ELEMENT b EMPTY>
<!ATTLIST a att (a) #IMPLIED>
<!ATTLIST b att ( a | b ) #IMPLIED>
]>
<doc/>
'