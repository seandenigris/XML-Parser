tests
testDetectIfNone
	| list |

	list := self listWithElements.
	self listElements do: [:element |
		self assert:
			(list
				detect: [:each | each = element]
				ifNone: [self newElement]) = element].
	self assert:
		(list
			detect: [:each | each = self absentElement]
			ifNone: [self newElement]) = self newElement.