tests - exception raising
testnotwfsa060xml
	"Source file: xmltest/not-wf/sa/060.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa060xml
				documentURI: 'not-wf/sa/060.xml']
		raise: self parserExceptions