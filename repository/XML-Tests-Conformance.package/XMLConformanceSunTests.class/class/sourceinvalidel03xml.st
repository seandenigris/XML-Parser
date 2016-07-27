xml source
sourceinvalidel03xml
	"Source file: sun/invalid/el03.xml"

	^ '<!DOCTYPE root [
<!ELEMENT root (#PCDATA|root)*>
<!ELEMENT exception (#PCDATA)>
]>
<root>this is ok <exception>this isn''t</exception> </root>
'