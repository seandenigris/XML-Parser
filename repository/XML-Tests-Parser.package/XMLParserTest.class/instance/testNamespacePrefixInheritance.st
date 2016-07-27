tests
testNamespacePrefixInheritance
	self
		shouldnt: [
			SAXHandler
				parse:
					'<one xmlns:prefix1="ns">
						<prefix1:two xmlns:prefix2="ns2">
							<prefix2:three><prefix1:four /></prefix2:three>
						</prefix1:two>
					</one>'
				usingNamespaces: true]
		raise: XMLNamespaceException.
	self
		should: [
			SAXHandler
				parse:
					'<one xmlns:prefix1="ns">
						<prefix1:two xmlns:prefix2="ns2" />
						<prefix2:three />
					</one>'
				usingNamespaces: true]
		raise: XMLNamespaceException.
	self
		should: [
			SAXHandler
				parse:
					'<one xmlns:prefix1="ns">
						<prefix1:two xmlns:prefix2="ns2">
							<prefix2:three xmlns:prefix3="ns3" />
						</prefix1:two>
						<prefix3:four />
					</one>'
				usingNamespaces: true]
		raise: XMLNamespaceException.
	self
		shouldnt: [
			SAXHandler
				parse:
					'<one xmlns:prefix1="ns">
						<prefix1:two xmlns:prefix2="ns2">
							<prefix2:three xmlns:prefix3="ns3" />
						</prefix1:two>
						<prefix2:four />
						<prefix3:five />
					</one>'
				usingNamespaces: false]
		raise: XMLNamespaceException.