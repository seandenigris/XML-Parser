accessing
newElementsNamed: aNameArray
	| names qualifiedName element |

	names := aNameArray asOrderedCollection.
	^ XMLOrderedList newFrom:
		(self
			createNodes: aNameArray size
			with: [
				((qualifiedName := names removeFirst) includes: $:)
					ifTrue: [
						qualifiedName splitQualifiedNameInto: [:prefix :localPart |
							element := XMLElement
								name: qualifiedName
								namespaceURI: 'http://', prefix]]
					ifFalse: [element := XMLElement named: qualifiedName].
				element]).