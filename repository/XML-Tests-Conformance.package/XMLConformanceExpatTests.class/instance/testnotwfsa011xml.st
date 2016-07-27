tests - exception raising
testnotwfsa011xml
	"Source file: xmltest/not-wf/sa/011.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa011xml
				documentURI: 'not-wf/sa/011.xml']
		raise: self parserExceptions