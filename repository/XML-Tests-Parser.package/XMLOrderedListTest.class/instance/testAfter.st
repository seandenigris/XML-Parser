tests
testAfter
	| list |

	list := self listWithElements.
	self
		assert:
			(self listElements allSatisfy: [:each |
				(list after: each) = (self listElements after: each ifAbsent: [self defaultValue])]).