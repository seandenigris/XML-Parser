xml source
sourceinvalidattr02xml
	"Source file: sun/invalid/attr02.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root EMPTY>
<!ATTLIST root
    affiliated	ENTITIES	#REQUIRED
    >
    <!-- tests the "entity name" VC ... the "entity declared" clause,
	as applied to attributes of type ENTITIES -->
<!NOTATION fruit
    PUBLIC "-//International Grocery Consortium//Edible//Healthy//EN">
<!ENTITY apple SYSTEM "http://www.apple.com" NDATA fruit>
]>
<root affiliated="apple apple food"/>
'