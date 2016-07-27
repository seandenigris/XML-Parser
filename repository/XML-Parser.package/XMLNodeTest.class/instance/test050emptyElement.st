tests
test050emptyElement
	| element |

	element := XMLElement new.
	self
		assert: element isTag & element isTagOrText & element isElement;
		deny: element hasAttributes;
		deny: element hasContents;
		assert: element elementsAndContents isEmpty;
		assert: element contents isEmpty.