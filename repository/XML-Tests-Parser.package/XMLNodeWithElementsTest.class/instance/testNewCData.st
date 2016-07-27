tests
testNewCData
	| cdata |

	cdata := self nodeClass new newCData: 'test'.
	self
		assert: cdata isCData;
		assert: cdata string = 'test'.