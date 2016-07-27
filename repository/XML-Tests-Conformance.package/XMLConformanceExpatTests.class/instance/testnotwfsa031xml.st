tests - exception raising
testnotwfsa031xml
	"Source file: xmltest/not-wf/sa/031.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa031xml
				documentURI: 'not-wf/sa/031.xml']
		raise: self parserExceptions