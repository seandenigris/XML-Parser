public interface
startElement: localName prefix: prefix uri: namespaceUri attributes: attributes
	| currentElement |
	currentElement := OPGenericElement newElementWithTag: localName.
	currentElement attributes: attributes.
	stack last addChildLast: currentElement.
	stack addLast: currentElement.
	cStartElement := cStartElement + 1.