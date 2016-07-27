tests
testParserReadLimitTest
	| xml |

	xml := '<test/>'.
	self
		shouldnt: [
			(SAXHandler on: xml)
				documentReadLimit: xml size;
				parseDocument]
		raise: XMLLimitException.
	self
		should: [
			(SAXHandler on: xml)
				documentReadLimit: xml size - 1;
				parseDocument]
		raise: XMLLimitException.
	self
		shouldnt: [
			(SAXHandler on: xml)
				documentReadLimit: nil;
				parseDocument]
		raise: XMLLimitException.