tests - exception raising
testnotwfsa134xml
	"Source file: xmltest/not-wf/sa/134.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa134xml
				documentURI: 'not-wf/sa/134.xml']
		raise: self exceptionClass