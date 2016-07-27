source
sourceoasisp12fail4xml
	^ '<!--Inability to resolve a notation should not be reported as an error-->
<!DOCTYPE doc
[
<!ELEMENT doc EMPTY>
<!NOTATION not1 PUBLIC ">">
]>
<doc/>
'