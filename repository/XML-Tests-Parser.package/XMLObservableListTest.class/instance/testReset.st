tests
testReset
	| list |

	super testReset.
	list := self listWithElements.
	self
		should: [list reset]
		removeAll: self listElements
		fromAndNotify: list.