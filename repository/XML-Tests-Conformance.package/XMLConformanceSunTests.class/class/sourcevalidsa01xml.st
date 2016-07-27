xml source
sourcevalidsa01xml
	"Source file: sun/valid/sa01.xml"

	^ '<?xml version=''1.0'' standalone=''yes''?>

<!DOCTYPE root [
    <!ELEMENT root (child)*>
    <!ELEMENT child (#PCDATA)>
]>

<root>
    <child>
    The whitespace around this element would be
    invalid as standalone were the DTD external.
    </child>
</root>
'