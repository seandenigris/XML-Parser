tests
testElementNesting
	| error |

	error := XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<unclosed>'] raise: error;
		should: [SAXHandler parse: '</unopened>'] raise: error;
		should: [SAXHandler parse: '<unclosed1/><unclosed2/>'] raise: error;
		should: [SAXHandler parse: '<root></unopened></root>'] raise: error;
		should: [SAXHandler parse: '<root><unclosed></root>'] raise: error;
		should: [SAXHandler parse: '<root><first><second></first></second></root>'] raise: error.