xml source
sourceinvalidattr10xml
	"Source file: sun/invalid/attr10.xml"

	^ '<!DOCTYPE collection [

<!ELEMENT collection ANY>

<!ELEMENT identifier EMPTY>
<!ATTLIST identifier
    value	IDREFS	"i-am-not-a-number 42"
    >
    <!-- tests the "attribute default legal" vc -->

<!ELEMENT identified EMPTY>
<!ATTLIST identified
    id		ID	#REQUIRED
    >
]>

<collection>
    <identifier name="i-am-not-a-number"/>
    <identified id="i-am-not-a-number"/>
</collection>
'