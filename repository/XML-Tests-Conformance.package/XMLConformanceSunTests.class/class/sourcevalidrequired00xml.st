xml source
sourcevalidrequired00xml
	"Source file: sun/valid/required00.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!ATTLIST root
	req CDATA #REQUIRED
	>
]>

<root req="foo"/>
'