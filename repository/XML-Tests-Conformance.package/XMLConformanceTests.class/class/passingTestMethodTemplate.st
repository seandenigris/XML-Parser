method templates
passingTestMethodTemplate
	^ '{1}
	"Source file: {2}"

	self
		shouldnt: [
			self
				parse: self class {3}
				documentURI: ''{4}'']
		raise: self exceptionClass'