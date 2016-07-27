tests
testStandalone
	| dtdXml standaloneDecl |

	dtdXml := self addressBookXMLWithDTD.
	SAXHandler
		parse: dtdXml
		usingNamespaces: true
		validation: true
		externalEntities: false.
	self should: [SAXHandler parse: dtdXml] raise: XMLFileIOException.

	standaloneDecl := (dtdXml copyUpTo: $>) allButLast, ' standalone="yes" ?>'.
	SAXHandler parse: standaloneDecl, (dtdXml copyAfter: $>).