xml source
sourcevalidext02xml
	"Source file: sun/valid/ext02.xml"

	^ '<!DOCTYPE foo [
<!ELEMENT foo (root*)>
<!ELEMENT root EMPTY>
<!ENTITY utf16b SYSTEM "../invalid/utf16b.xml">
<!ENTITY utf16l SYSTEM "../invalid/utf16l.xml">
]>

<foo> &utf16b; &utf16l; </foo>
'