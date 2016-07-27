tests - exception raising
testnotwfsa043xml
	"Source file: xmltest/not-wf/sa/043.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa043xml
				documentURI: 'not-wf/sa/043.xml']
		raise: self exceptionClass