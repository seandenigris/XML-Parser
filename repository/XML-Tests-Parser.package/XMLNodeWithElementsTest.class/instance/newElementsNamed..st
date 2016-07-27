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
						element := XMLElement
							name: qualifiedName
							namespaceURI: 'http://', (qualifiedName qualifiedNamePrefix)]
					ifFalse: [element := XMLElement named: qualifiedName].
				element]).