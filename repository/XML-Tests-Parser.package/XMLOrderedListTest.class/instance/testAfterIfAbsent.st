tests
testAfterIfAbsent
	| list |

	list := self listWithElements.
	self assert:
		(self listElements allSatisfy: [:each |
			(list after: each ifAbsent: [self newElement]) =
				(self listElements after: each ifAbsent: [self newElement])]).
	self assert: (list after: self absentElement ifAbsent: [self newElement]) = self newElement.