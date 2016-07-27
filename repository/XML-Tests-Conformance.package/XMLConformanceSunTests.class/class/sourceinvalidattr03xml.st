xml source
sourceinvalidattr03xml
	"Source file: sun/invalid/attr03.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root EMPTY>
<!ATTLIST root
    type	NOTATION	(fruit | vegetable)	#REQUIRED
    >
<!NOTATION fruit
    PUBLIC "-//International Grocery Consortium//Edible//Healthy//EN">
<!NOTATION vegetable
    PUBLIC "-//International Grocery Consortium//Edible//Yucky//EN">
<!NOTATION candy
    PUBLIC "-//International Grocery Consortium//Edible//Yummy//EN">

    <!-- tests the ''must match one of the names included in the
	declaration'' part of the "Notation Attributes" VC -->
]>
<root type="candy"/>

'