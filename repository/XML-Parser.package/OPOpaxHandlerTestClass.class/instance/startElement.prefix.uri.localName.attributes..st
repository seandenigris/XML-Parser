public interface
startElement: aQualifiedName prefix: prefix uri: namespaceUri localName: localName attributes: attributes
	| currentElement |
	currentElement := OPGenericElement newElementWithTag: localName.
	currentElement attributes: attributes.
	stack last addChildLast: currentElement.
	stack addLast: currentElement.
	cStartElement := cStartElement + 1.