tests
assertNode: aNode hasName: aQualifiedName namespaceURI: aUri
	| prefix localName |

	prefix := aQualifiedName copyUpTo: $:.
	prefix = aQualifiedName
		ifTrue: [
			prefix := ''.
			localName := aQualifiedName]
		ifFalse: [localName := aQualifiedName copyAfter: $:].
	self
		assert: aNode name = aQualifiedName;
		assert: aNode prefix = prefix;
		assert: aNode localName = localName;
		assert: (aNode isNamed: aQualifiedName);
		assert: (aNode isNamed: localName);
		assert: aNode namespaceURI = aUri;
		assert:
			aNode expandedName =
				(aUri
					ifEmpty: [localName]
					ifNotEmpty: ['{', aUri, '}', localName]);
		assert: (prefix ifEmpty: [aNode hasPrefix not] ifNotEmpty: [aNode hasPrefix])

