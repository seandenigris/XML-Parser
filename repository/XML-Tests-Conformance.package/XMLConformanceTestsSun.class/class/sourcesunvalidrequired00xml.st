source
sourcesunvalidrequired00xml
	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!ATTLIST root
	req CDATA #REQUIRED
	>
]>

<root req="foo"/>
'