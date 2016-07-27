tests
testAtPut
	| list |

	list := self listWithElements.
	1 to: list size do: [:i | | replacement |
		replacement := list at: i.
		self
			assert: (list at: i put: (list at: i)) == replacement;
			assert: (list at: i) == replacement].
	self assert: list = self listWithElements.

	list := self listWithElements.
	1 to: list size do: [:i | | replacement |
		replacement := self changedListElements at: i.
		self
			assert: (list at: i put: replacement) == replacement;
			assert: (list at: i) == replacement].
	self assert: list = (self listClass newFrom: self changedListElements).

	self
		assert: (list at: list size + 1 put: self newElement) = self newElement;
		assert: (list at: list size) = self newElement.
	self
		should: [list at: 0 put: self newElement]
		raise: Error.
	self
		should: [list at: list size + 2 put: self newElement]
		raise: Error.