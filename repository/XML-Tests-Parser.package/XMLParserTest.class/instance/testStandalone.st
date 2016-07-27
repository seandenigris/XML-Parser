tests
testStandalone
	| dtdXml standaloneDecl |

	dtdXml := self addressBookXMLWithDTD.
	self should: [SAXHandler parse: dtdXml] raise: XMLFileIOException.
	self
		shouldnt: [
			SAXHandler
				parse: dtdXml
				usingNamespaces: true
				validation: true
				externalEntities: false]
		raise: XMLFileIOException.

	standaloneDecl := (dtdXml copyUpTo: $>) allButLast, ' standalone="yes" ?>'.
	self
		shouldnt: [SAXHandler parse: standaloneDecl, (dtdXml copyAfter: $>)]
		raise: XMLFileIOException.