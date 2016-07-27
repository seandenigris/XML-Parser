tests - exception raising
testnotwfsa041xml
	"Source file: xmltest/not-wf/sa/041.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa041xml
				documentURI: 'not-wf/sa/041.xml']
		raise: self exceptionClass