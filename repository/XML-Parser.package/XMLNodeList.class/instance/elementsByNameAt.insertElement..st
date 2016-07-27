private
elementsByNameAt: aName insertElement: anElement
	| elementsWithName elementBefore |

	(elementBefore := self findElementBefore: anElement withName: aName)
		ifNil: [^ self elementsByNameAt: aName addElement: anElement].

	(elementsWithName := self elementsByName at: aName)
		isCollection
			ifTrue: [elementsWithName add: anElement after: elementBefore]
			ifFalse: [
				self elementsByName
					at: aName
					put: (self species with: elementBefore with: anElement)]