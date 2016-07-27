xml source
sourceinvalidnotsa07xml
	"Source file: sun/invalid/not-sa07.xml"

	^ '<?xml version=''1.0'' standalone=''yes''?>

<!DOCTYPE attributes SYSTEM "../valid/sa.dtd" [
    <!--
	NMTOKEN needs normalization
    -->
]>

<attributes
    token =	"b"
    nmtoken =	" this-gets-normalized "
    />
'