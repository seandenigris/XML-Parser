xml source
sourceinvalidattr01xml
	"Source file: sun/invalid/attr01.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root EMPTY>
<!ATTLIST root
    affiliated	ENTITY	#REQUIRED
    >
    <!-- tests the "entity name" VC ... the "entity declared" clause,
	as applied to attributes of type ENTITY -->
]>
<root affiliated="food"/>
'