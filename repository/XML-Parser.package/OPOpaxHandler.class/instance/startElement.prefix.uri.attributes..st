public interface
startElement: localName prefix: prefix uri: namespaceUri attributes: attributes
"	localName = 'Class' ifTrue: [self halt.]."
"	(ElementManager uniqueInstance elementNamesWithoutPrefix includes: localName) ifTrue: [ |currentElement|
		pName := (attributes select: [ :each | each key type = 'name']) first.
		id := (attributes select: [ :each | each key type = 'xmi.id']) first value.
		currentElement := (ElementManager uniqueInstance elementNamedWithoutPrefix: localName) named: pName in: stack last withId: id."
	| currentElement |
	currentElement := OPGenericElement newElementWithTag: localName.
	currentElement attributes: attributes.
	stack last addChildLast: currentElement.
	stack addLast: currentElement.
"	]."