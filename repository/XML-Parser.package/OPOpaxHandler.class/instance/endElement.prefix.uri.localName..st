public interface
endElement: qualifiedName prefix: prefix uri: namespaceURI localName: localName 
	"indicates the end of an element. See startElement"
	((stack last class xmlTags includes: localName) or: [stack last isMemberOf: OPGenericElement]) ifTrue: [stack removeLast: 1].