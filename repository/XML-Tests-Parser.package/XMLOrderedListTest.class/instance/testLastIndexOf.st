tests
testLastIndexOf
	| list |

	list := self listClass newFrom: self listElements, self listElements.
	list do: [:each |
		self assert:
			(list lastIndexOf: each) =
				(self allowsDuplicates
					ifTrue: [self listElements, self listElements lastIndexOf: each]
					ifFalse: [self listElements lastIndexOf: each])].
	self assert: (list lastIndexOf: self newElement) isZero.