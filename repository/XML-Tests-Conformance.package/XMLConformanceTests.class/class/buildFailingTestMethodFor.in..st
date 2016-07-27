building subclasses
buildFailingTestMethodFor: aFileReference in: aClass
	self
		buildTestMethodFor: aFileReference
		in: aClass
		usingTemplate: self failingTestMethodTemplate
		classified: 'tests - exception raising' asSymbol