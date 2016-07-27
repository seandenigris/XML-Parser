tests
testSwapWith
	| list start end |

	list := self listWithElements.

	start := 1.
	end := list size.
	[start < end]
		whileTrue: [
			list swap: start with: end.
			start := start + 1.
			end := end - 1].
	self assert: list = (self listClass newFrom: self listElements reversed).

	start := 1.
	end := list size.
	[start < end]
		whileTrue: [
			list swap: end with: start.
			start := start + 1.
			end := end - 1].
	self assert: list = self listWithElements.

	1 to: list size do: [:i | list swap: i with: i].
	self assert: list = self listWithElements.

	self
		should: [list swap: 0 with: 1]
		raise: Error.
	self
		should: [list swap: list size + 1 with: list size]
		raise: Error.
	self assert: list = self listWithElements.