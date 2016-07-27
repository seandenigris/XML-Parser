tests - exception raising
testnotwfsa058xml
	"Source file: xmltest/not-wf/sa/058.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa058xml
				documentURI: 'not-wf/sa/058.xml']
		raise: self exceptionClass