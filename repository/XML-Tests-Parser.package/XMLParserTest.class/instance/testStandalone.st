tests
testStandalone
	| dtdXml standaloneDecl |

	dtdXml := self addressBookXMLWithDTD.
	self
		shouldnt: [
			SAXHandler
				parse: dtdXml
				usingNamespaces: true
				validation: true
				externalEntities: false]
		raise: XMLFileException.

	standaloneDecl := (dtdXml copyUpTo: $>) allButLast, ' standalone="yes" ?>'.
	self
		shouldnt: [SAXHandler parse: standaloneDecl, (dtdXml copyAfter: $>)]
		raise: XMLFileException.