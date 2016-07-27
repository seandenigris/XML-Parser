tests - exception raising
testnotwfsa175xml
	"Source file: xmltest/not-wf/sa/175.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa175xml
				documentURI: 'not-wf/sa/175.xml']
		raise: self exceptionClass