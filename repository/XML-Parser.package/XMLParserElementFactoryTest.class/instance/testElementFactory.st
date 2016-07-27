tests
testElementFactory
	| factory document userClass dateClass tableClass |

	(factory := XMLPluggableElementFactory new)
		handleElement: 'user:user' namespaceURI: 'urn:user' withClass: self userElementClass;
		handleElement: 'username' namespaceURI: 'urn:notuser' withClass: self otherUsernameClass;
		handleElement: 'date-registered' namespaceURI: 'urn:notuser' withClass: self otherDateElementClass;
		handleElement: 'date-registered' withClass: self dateElementClass;
		handleElement: 'notuser:table-name' namespaceURI: 'urn:user' withClass: self otherTableElementClass;
		handleElement: 'table-name' namespaceURI: 'urn:user' withClass: self otherTableElementClass;
		handleElement: 'table-name' withClass: self tableElementClass.

	document :=
		(XMLDOMParser on: self userXML)
			nodeFactory: factory;
			parseDocument.
	self
		assert: (document root isMemberOf: self userElementClass);
		assert: ((document root elementAt: 'username') isMemberOf: XMLElement);
		assert: ((document root elementAt: 'real-name') isMemberOf: XMLElement);
		assert: ((document root elementAt: 'date-registered') isMemberOf: self dateElementClass);
		assert: ((document root elementAt: 'table-name') isMemberOf: self tableElementClass).