tests
testEndsWith
	| list |

	self deny: (self emptyList endsWith: self listElements).
	list := self listWithElements.
	1 to: list size do: [:i |
		self
			assert: (list endsWith: (self listElements copyFrom: i to: list size));
			deny: (list endsWith: ((self listElements copyFrom: i to: list size) copyWith: self absentElement));
			deny: (list endsWith: ((self listElements copyFrom: i to: list size) copyWithFirst: self absentElement))].