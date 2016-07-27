tests - exception raising
testnotwfsa030xml
	"Source file: xmltest/not-wf/sa/030.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa030xml
				documentURI: 'not-wf/sa/030.xml']
		raise: self exceptionClass