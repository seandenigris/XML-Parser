tests
testReset
	| list oldCapacity |

	list := self listWithElements.
	oldCapacity := list capacity.
	list reset.
	self
		assert: list isEmpty;
		assert: list capacity >= oldCapacity.