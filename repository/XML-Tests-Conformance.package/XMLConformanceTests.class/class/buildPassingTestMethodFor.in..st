building subclasses
buildPassingTestMethodFor: aFileReference in: aClass
	self
		buildTestMethodFor: aFileReference
		in: aClass
		usingTemplate: self passingTestMethodTemplate
		classified: 'tests' asSymbol