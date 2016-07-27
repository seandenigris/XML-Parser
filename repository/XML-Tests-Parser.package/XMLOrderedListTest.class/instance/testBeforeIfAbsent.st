tests
testBeforeIfAbsent
	| list |

	list := self listWithElements.
	self assert:
		(self listElements allSatisfy: [:each |
			(list before: each ifAbsent: [self newElement]) =
				(self listElements before: each ifAbsent: [self newElement])]).
	self assert: (list before: self absentElement ifAbsent: [self newElement]) = self newElement.