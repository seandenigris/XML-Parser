tests
testBeginsWith
	| list |

	self deny: (self emptyList beginsWith: self listElements).
	list := self listWithElements.
	1 to: list size do: [:i |
		self
			assert: (list beginsWith: (self listElements copyFrom: 1 to: i));
			deny: (list beginsWith: ((self listElements copyFrom: 1 to: i) copyWith: self absentElement));
			deny: (list beginsWith: ((self listElements copyFrom: 1 to: i) copyWithFirst: self absentElement))].