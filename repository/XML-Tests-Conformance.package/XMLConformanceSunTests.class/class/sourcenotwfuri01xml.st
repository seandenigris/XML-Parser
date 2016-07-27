xml source
sourcenotwfuri01xml
	"Source file: sun/not-wf/uri01.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root EMPTY>
<!-- URI fragments disallowed -->
<!ENTITY foo SYSTEM "foo#bar">
]>
<root/>
'