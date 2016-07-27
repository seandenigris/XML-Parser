method templates
failingTestMethodTemplate
	^ '{1}
	"Source file: {2}"

	(self isSkippableTest: #{1})
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class {3}
				documentURI: ''{4}'']
		raise: self parserExceptions'