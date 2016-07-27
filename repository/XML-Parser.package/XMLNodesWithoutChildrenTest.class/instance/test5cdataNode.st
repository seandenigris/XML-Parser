tests
test5cdataNode
	| node raw |

	node := XMLCData new.
	raw := self markupString.
	self
		assertNode: node hasTypes: #(isCData isStringNode isContentNode);
		assertCData: node hasString: '';
		assertCData: (node string: raw) hasString: raw;
		assertCData: (node addContent: raw) hasString: raw, raw;
		assertCData: (node addContent: raw asXMLString) hasString: raw, raw, raw;
		assert: node asXMLString == node