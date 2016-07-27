xml source
sourceinvalidnotsa01xml
	"Source file: sun/invalid/not-sa01.xml"

	^ '<?xml version=''1.0'' standalone=''yes''?>

<!DOCTYPE root SYSTEM "../valid/sa.dtd">
    
<root>
    <child>
    The whitespace before and after this element keeps
    this from being standalone.
    </child>
</root>
'