private
findElementBefore: anElement withName: aName
	| lastNamedElement |

	lastNamedElement := nil.
	self do: [:each |
		(each isElement and: [each isNamed: aName])
			ifTrue: [
				(each = anElement)
					ifTrue: [^ lastNamedElement].
				lastNamedElement := each]].
	^ lastNamedElement.