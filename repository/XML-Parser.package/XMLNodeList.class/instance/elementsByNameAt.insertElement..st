private
elementsByNameAt: aName insertElement: anElement
	| elementsWithName elementAfter |

	(elementAfter := self findElementAfter: anElement withName: aName)
		ifNil: [^ self elementsByNameAt: aName addElement: anElement].

	(elementsWithName := self elementsByName at: aName)
		isCollection
			ifTrue: [elementsWithName add: anElement before: elementAfter]
			ifFalse: [
				self elementsByName
					at: aName
					put: (self species with: anElement with: elementAfter)]