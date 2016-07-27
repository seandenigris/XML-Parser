tests - exception raising
testnotwfsa075xml
	"Source file: xmltest/not-wf/sa/075.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa075xml
				documentURI: 'not-wf/sa/075.xml']
		raise: self exceptionClass