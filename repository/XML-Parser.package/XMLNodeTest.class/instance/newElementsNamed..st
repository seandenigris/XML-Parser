accessing
newElementsNamed: aNameArray
	| names fullName localName |

	names := aNameArray asOrderedCollection.
	^ self
		createNodes: aNameArray size
		with: [
			fullName := names removeFirst asString.
			(localName := fullName copyAfter: $:)
				ifNotEmpty: [
					XMLElement
						named: localName
						namespace: (fullName copyUpTo: $:)
						uri: nil
						attributes: Dictionary new]
				ifEmpty: [XMLElement named: fullName]].