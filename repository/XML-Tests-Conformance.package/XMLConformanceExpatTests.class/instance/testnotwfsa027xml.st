tests - exception raising
testnotwfsa027xml
	"Source file: xmltest/not-wf/sa/027.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa027xml
				documentURI: 'not-wf/sa/027.xml']
		raise: self exceptionClass