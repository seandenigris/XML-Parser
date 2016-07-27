xml source
sourceinvalidel05xml
	"Source file: sun/invalid/el05.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root (#PCDATA|repeat-till-done|repeat-till-done)*>
<!ELEMENT repeat-till-done (#PCDATA)>
]>
<root/>
'