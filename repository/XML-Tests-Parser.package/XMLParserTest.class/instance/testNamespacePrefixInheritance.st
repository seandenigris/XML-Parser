tests
testNamespacePrefixInheritance
	self
		shouldnt: [
			SAXHandler
				parse: '<one xmlns:prefix1="ns"><prefix1:two /></one>'
				usingNamespaces: true]
		raise: XMLNamespaceException.
	self
		should: [
			SAXHandler
				parse:
					'<one xmlns:prefix1="ns">
						<prefix2:two><three xmlns:prefix2="ns2"/></prefix2:two>
					</one>'
				usingNamespaces: true]
		raise: XMLNamespaceException.