xml source
sourceinvalidrequired00xml
	"Source file: sun/invalid/required00.xml"

	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!ATTLIST root
	req CDATA #REQUIRED
	>
]>

<root/>

<!-- doesn''t include required ''req'' attribute -->
'