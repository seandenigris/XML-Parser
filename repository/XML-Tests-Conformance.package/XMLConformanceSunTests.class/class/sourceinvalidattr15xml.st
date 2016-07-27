xml source
sourceinvalidattr15xml
	"Source file: sun/invalid/attr15.xml"

	^ '<!DOCTYPE reference [

<!ELEMENT reference EMPTY>
<!ATTLIST reference
    source	NOTATION	(brittannica | worldbook) "encarta"
    >
    <!-- tests the "attribute default legal" vc -->

<!NOTATION brittannica SYSTEM "http://www.eb.com/">
<!NOTATION worldbook SYSTEM "http://www.worldbook.com">

]>

<reference source="brittannica"/>
'