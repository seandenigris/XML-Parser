tests - exception raising
testnotwfsa057xml
	"Source file: xmltest/not-wf/sa/057.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa057xml
				documentURI: 'not-wf/sa/057.xml']
		raise: self exceptionClass