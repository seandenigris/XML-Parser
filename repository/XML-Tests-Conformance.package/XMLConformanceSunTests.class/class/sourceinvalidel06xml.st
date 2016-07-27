xml source
sourceinvalidel06xml
	"Source file: sun/invalid/el06.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root EMPTY>
    <!-- in case parsers special-case builtin entities incorrectly -->
]>
<root>&amp;</root>

'