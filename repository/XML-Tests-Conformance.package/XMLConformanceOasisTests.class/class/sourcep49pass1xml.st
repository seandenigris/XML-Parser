xml source
sourcep49pass1xml
	"Source file: oasis/p49pass1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc ANY>
<!--NOTE: XML doesn''t specify whether this is a choice or a seq-->
<!ELEMENT a (doc?)>
<!ELEMENT b (doc|a)>
<!ELEMENT c (
doc
|
a
|
c?
)>
]>
<doc/>'