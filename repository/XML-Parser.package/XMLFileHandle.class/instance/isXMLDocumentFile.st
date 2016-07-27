testing
isXMLDocumentFile
	"Returns true if the file has a known extension of an XML document format
	such as .xml, .xhtml, and .xul, but not .dtd, .ent, or other formats that
	are XML-related but not proper XML documents."

	^ XMLDocumentFileExtensions includes: self extension asLowercase