xml source
sourcep12pass1xml
	"Source file: oasis/p12pass1.xml"

	^ '<!--Inability to resolve a notation should not be reported as an error-->
<!DOCTYPE doc
[
<!ELEMENT doc EMPTY>
<!NOTATION not1 PUBLIC "a b
cdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
<!NOTATION not2 PUBLIC ''0123456789-()+,./:=?;!*#@$_%''>
<!NOTATION not3 PUBLIC "0123456789-()+,.''/:=?;!*#@$_%">
]>
<doc/>
'