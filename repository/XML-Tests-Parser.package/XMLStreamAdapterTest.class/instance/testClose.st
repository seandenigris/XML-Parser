tests
testClose
	self
		shouldnt: [self newAdapter close]
		raise: Error