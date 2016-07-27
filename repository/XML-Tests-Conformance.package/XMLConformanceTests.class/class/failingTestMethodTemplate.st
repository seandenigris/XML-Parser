method templates
failingTestMethodTemplate
	^ '{1}
	"Source file: {2}"

	self
		should: [
			self
				parse: self class {3}
				documentURI: ''{4}'']
		raise: self parserExceptions'