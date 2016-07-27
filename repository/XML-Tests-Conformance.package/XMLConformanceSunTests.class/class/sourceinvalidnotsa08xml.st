xml source
sourceinvalidnotsa08xml
	"Source file: sun/invalid/not-sa08.xml"

	^ '<?xml version=''1.0'' standalone=''yes''?>

<!DOCTYPE attributes SYSTEM "../valid/sa.dtd" [
    <!--
	NMTOKENS needs normalization
    -->
]>

<attributes
    token =	"b"
    nmtokens =	" this&#x0d;&#x0a; also	 gets&#x20; normalized "
    />
'