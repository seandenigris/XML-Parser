source
sourcesunnotwfdtd02xml
	^ '<!DOCTYPE root [
    <!ELEMENT root EMPTY>
    <!-- correct PE ref syntax -->
    <!ENTITY % foo "<!ATTLIST root>">
    % foo;
]>

<root/>
'