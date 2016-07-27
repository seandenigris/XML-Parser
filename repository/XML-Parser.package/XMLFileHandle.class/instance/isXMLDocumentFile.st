testing
isXMLDocumentFile
	"Returns true if the file has a known extension of an XML document format
	such as .xml, .xhtml, .xul, but not .dtd, .ent, or other XML-related
	formats that aren't proper XML documents."

	^ XMLDocumentFileExtensions includes: self extension asLowercase