tests
testLastIndexOfIfAbsent
	| list |

	list := self listClass newFrom: self listElements, self listElements.
	list do: [:each |
		self assert:
			(list lastIndexOf: each ifAbsent: [-1]) =
				(self allowsDuplicates
					ifTrue: [self listElements, self listElements lastIndexOf: each]
					ifFalse: [self listElements lastIndexOf: each])].
	self assert: (list lastIndexOf: self newElement ifAbsent: [-1])  = -1.