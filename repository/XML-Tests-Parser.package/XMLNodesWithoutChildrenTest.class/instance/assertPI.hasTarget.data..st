assertions
assertPI: aNode hasTarget: aTarget data: aData
	self
		assert: aNode target = aTarget;
		assert: aNode data = aData;
		assert: aNode printString = ('<?', aTarget, ' ', aData, '?>')