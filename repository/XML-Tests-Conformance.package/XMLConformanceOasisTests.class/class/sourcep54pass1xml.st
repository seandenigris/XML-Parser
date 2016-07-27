xml source
sourcep54pass1xml
	"Source file: oasis/p54pass1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc (a|b|c)*>
<!ELEMENT a EMPTY>
<!ELEMENT b EMPTY>
<!ELEMENT c EMPTY>
<!ATTLIST a att CDATA #IMPLIED>
<!ATTLIST b att NMTOKENS #IMPLIED>
<!ATTLIST c att (a|b) #IMPLIED>
]>
<doc/>
'