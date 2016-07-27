tests
testAtIfAbsent
	| list |

	list := self listWithElements.
	self
		assert: ((1 to: list size) allSatisfy: [:i | (list at: i ifAbsent: [self newElement]) = (self listElements at: i)]);
		assert: (list at: 0 ifAbsent: [self newElement]) = self newElement;
		assert: (list at: list size + 1 ifAbsent: [self newElement]) = self newElement.