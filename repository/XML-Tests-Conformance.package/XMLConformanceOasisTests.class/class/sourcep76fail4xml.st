xml source
sourcep76fail4xml
	"Source file: oasis/p76fail4.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc (#PCDATA)>
<!NOTATION unknot PUBLIC "Unknown">
<!--error should be reported here, not at <!Notation-->
<!ENTITY ge SYSTEM "nop.ent" NDATA -unknot>
<!NOTATION -unknot PUBLIC "Unknown">
]>
<doc/>
'