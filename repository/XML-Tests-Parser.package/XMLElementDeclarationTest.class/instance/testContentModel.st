tests
testContentModel
	self
		assert: self nodeClass new contentModel isEmpty;
		assert: (self nodeClass new contentModel: '(one|two)') contentModel = '(one|two)'