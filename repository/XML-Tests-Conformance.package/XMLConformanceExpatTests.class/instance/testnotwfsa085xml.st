tests - exception raising
testnotwfsa085xml
	"Source file: xmltest/not-wf/sa/085.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa085xml
				documentURI: 'not-wf/sa/085.xml']
		raise: self exceptionClass