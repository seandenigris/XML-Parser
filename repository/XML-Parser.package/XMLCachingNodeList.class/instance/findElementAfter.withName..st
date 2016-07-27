private
findElementAfter: anElement withName: aName
	| previousElementWithName |

	previousElementWithName := nil.
	self do: [:each |
		(each isElement and: [each isNamed: aName])
			ifTrue: [
				(previousElementWithName = anElement)
					ifTrue: [^ each].
				previousElementWithName := each]].
	^ nil.