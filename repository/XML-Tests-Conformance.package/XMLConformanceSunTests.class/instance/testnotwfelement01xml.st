tests - exception raising
testnotwfelement01xml
	"Source file: sun/not-wf/element01.xml"

	self
		should: [
			self
				parse: self class sourcenotwfelement01xml
				documentURI: 'not-wf/element01.xml']
		raise: self parserExceptions