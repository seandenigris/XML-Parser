tests
testAtPut
	| list |

	list := self listWithElements.
	self
		assert:
			((1 to: list size) allSatisfy: [:i | | replacement |
				replacement := self listElements reversed at: i.
				(list at: i put: replacement) == replacement]);
		assert: list = (self listClass newFrom: self listElements reversed);
		should: [list at: 0 put: self absentElement] raise: Error.
	self
		assert: (list at: list size + 1 put: self newElement) = self newElement;
		assert: (list at: list size) = self newElement.
	self
		should: [list at: list size + 2 put: self absentElement]
		raise: Error.