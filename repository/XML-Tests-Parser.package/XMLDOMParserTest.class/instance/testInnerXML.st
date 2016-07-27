tests
testInnerXML
	| document contactInfo address1 address2 innerXml |

	document := XMLDOMParser parse: self addressBookXML.
	document allElementsNamed: 'person' do: [:person |
		#('address' 'job-info' 'manager') do: [:each |
			self assert: (person elementAt: each) innerXML isEmpty].

		address1 := (person attributeAt: 'first-name'), '@example.com'.
		address2 := (person attributeAt: 'first-name'), '@users.example.com'.
		innerXml := '<email>', address1, '</email><email2>', address2, '</email2>'.
		contactInfo := person elementAt: 'contact-info'.
		self
			assert: (contactInfo innerXML: innerXml) == contactInfo;
			assert: contactInfo innerXML = innerXml;
			assert: contactInfo elements size = 2;
			assert: (contactInfo elements first isNamed: 'email');
			assert: (contactInfo elements first contentString = address1);
			assert: (contactInfo elements second isNamed: 'email2');
			assert: (contactInfo elements second contentString = address2)].

	self assert: ((document innerXML: '<new-root/>') root isNamed: 'new-root').
	self
		should: [document innerXML: '<root1/><root2/>']
		raise: XMLWellFormednessException.