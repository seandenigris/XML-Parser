xml source
sourceinvaliddtd03xml
	"Source file: sun/invalid/dtd03.xml"

	^ '<!DOCTYPE violation [
<!ELEMENT violation (a,a,a,b)>
<!ELEMENT a EMPTY>
<!ELEMENT b EMPTY>
    <!-- tests the "element valid" constraint for content
	which doesn''t match the declared content model.
	(there can be an infinite number of such tests...)
	-->
]>
<violation>
    <a/>
    <a/>
    <b/>
</violation>
'