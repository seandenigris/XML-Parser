tests
testNewCData
	| cdata |

	cdata := self newFactory newCData: 'test'.
	self
		assert: cdata class == self cdataClass;
		assert: cdata string = 'test'.