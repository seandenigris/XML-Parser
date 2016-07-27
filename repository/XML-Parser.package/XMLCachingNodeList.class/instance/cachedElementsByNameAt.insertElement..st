private
cachedElementsByNameAt: aName insertElement: anElement
	| elementsWithName elementAfter |

	(elementAfter := self findElementAfter: anElement withName: aName)
		ifNil: [^ self cachedElementsByNameAt: aName addElement: anElement].

	(elementsWithName := self cachedElementsByName at: aName) isCollection
		ifTrue: [elementsWithName add: anElement before: elementAfter]
		ifFalse: [
			self cachedElementsByName
				at: aName
				put: (OrderedCollection with: anElement with: elementAfter)].