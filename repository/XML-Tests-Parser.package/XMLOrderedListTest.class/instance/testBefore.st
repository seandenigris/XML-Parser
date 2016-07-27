tests
testBefore
	| list |

	list := self listWithElements.
	self assert:
		(self listElements allSatisfy: [:each |
			(list before: each) = (self listElements before: each ifAbsent: [self defaultValue])]).
	self assert: (list before: self absentElement) = self defaultValue.