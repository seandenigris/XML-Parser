tests - exception raising
testnotwfsa077xml
	"Source file: xmltest/not-wf/sa/077.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa077xml
				documentURI: 'not-wf/sa/077.xml']
		raise: self exceptionClass