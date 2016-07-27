tests
test7attributeNodes
	| attribute element |

	attribute := XMLAttribute new.
	self
		assertNode: attribute hasType: #isAttribute;
		assertAttribute: attribute hasName: '' value: '';
		assertNode: attribute hasName: '' namespaceURI: '';
		assertAttribute: (attribute name: 'name') hasName: 'name' value: '';
		assertNode: attribute hasName: 'name' namespaceURI: '';
		assertAttribute: (attribute value: 'value') hasName: 'name' value: 'value';
		assertAttribute: (XMLAttribute name: 'name' value: 'value') hasName: 'name' value: 'value';
		assertNode: (attribute prefix: 'prefix') hasName: 'prefix:name' namespaceURI: '';
		assertNode: (XMLAttribute name: 'prefix:name' value: 'value') hasName: 'prefix:name' namespaceURI: ''.

	element := XMLElement new.
	self
		assert: attribute element isNil;
		assert: (attribute element: element) element == element.