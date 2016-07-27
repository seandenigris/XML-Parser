method templates
passingTestMethodTemplate
	^ '{1}
	"Source file: {2}"

	(self isSkippableTest: #{1})
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class {3}
				documentURI: ''{4}'']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions'