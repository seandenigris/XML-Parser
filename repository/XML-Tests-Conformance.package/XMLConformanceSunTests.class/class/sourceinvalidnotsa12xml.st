xml source
sourceinvalidnotsa12xml
	"Source file: sun/invalid/not-sa12.xml"

	^ '<?xml version=''1.0'' standalone=''yes''?>

<!DOCTYPE attributes SYSTEM "../valid/sa.dtd" [
    <!--
	ENTITY needs normalization
    -->
]>

<attributes
    token =	"b"
    entity =	" unparsed-1 "
    />
'