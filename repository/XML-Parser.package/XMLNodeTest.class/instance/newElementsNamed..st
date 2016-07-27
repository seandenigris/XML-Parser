accessing
newElementsNamed: aNameArray
	| names qualifiedName element |

	names := aNameArray asOrderedCollection.
	^ XMLElementList newFrom:
		(self
			createNodes: aNameArray size
			with: [
				((qualifiedName := names removeFirst) includes: $:)
					ifTrue: [
						qualifiedName splitQualifiedNameInto: [:prefix :localPart |
							element := XMLElement
								named: qualifiedName
								namespaceURI: 'http://', prefix]]
					ifFalse: [element := XMLElement named: qualifiedName].
				element]).