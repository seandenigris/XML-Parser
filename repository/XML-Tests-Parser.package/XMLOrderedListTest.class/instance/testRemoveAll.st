tests
testRemoveAll
	| list |

	list := self listWithElements.
	self
		assert: (list removeAll) == list;
		assert: list isEmpty.