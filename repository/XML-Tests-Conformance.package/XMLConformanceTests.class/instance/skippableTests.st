accessing
skippableTests
	^ skippableTests ifNil: [skippableTests := self class skippableTests asSet]