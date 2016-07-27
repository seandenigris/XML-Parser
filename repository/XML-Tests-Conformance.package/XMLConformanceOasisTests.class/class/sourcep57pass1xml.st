xml source
sourcep57pass1xml
	"Source file: oasis/p57pass1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc (a|b)*>
<!ELEMENT a ANY>
<!ELEMENT b ANY>
<!NOTATION a SYSTEM "a">
<!ATTLIST a att (a|b) #IMPLIED>
<!ATTLIST b att NOTATION (a|b) #IMPLIED>
<!NOTATION b SYSTEM "b">
]>
<doc/>
'