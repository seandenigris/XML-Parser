accessing
newElementsNamed: aNameArray
	| names fullName localName namespace |

	names := aNameArray asOrderedCollection.
	^ self
		createNodes: aNameArray size
		with: [
			fullName := names removeFirst asString.
			(localName := fullName copyAfter: $:)
				ifNotEmpty: [
					namespace := (fullName copyUpTo: $:).
					XMLElement
						named: localName
						namespace: namespace
						uri: 'http://', namespace
						attributes: Dictionary new]
				ifEmpty: [XMLElement named: fullName]].