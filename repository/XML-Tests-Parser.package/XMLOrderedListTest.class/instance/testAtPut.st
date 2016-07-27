tests
testAtPut
	| list |

	list := self listWithElements.
	1 to: list size do: [:i | | replacement |
		replacement := list at: i.
		self
			assert: (list at: i put: replacement) == replacement;
			assert: (list at: i) == replacement].
	self assert: list = self listWithElements.

	self assert: (list at: list size + 1 put: self newElement) = self newElement.
	self assert:
		list =
			(self listClass newFrom: (self listElements copyWith: self newElement)).

	list := self listWithElements.
	1 to: list size do: [:i | | replacement |
		replacement := self changedListElements at: i.
		self
			assert: (list at: i put: replacement) == replacement;
			assert: (list at: i) == replacement].
	self assert: list = (self listClass newFrom: self changedListElements).

	list := self listWithElements.
	self listElements do: [:each |
		self assert: (list at: list size + 1 put: each) == each].
	self assert:
		list =
			(self allowsDuplicates
				ifTrue: [self listClass newFrom: self listElements, self listElements]
				ifFalse: [self listWithElements]).
	self
		should: [list at: 0 put: self newElement]
		raise: Error.
	self
		should: [list at: list size + 2 put: self newElement]
		raise: Error.