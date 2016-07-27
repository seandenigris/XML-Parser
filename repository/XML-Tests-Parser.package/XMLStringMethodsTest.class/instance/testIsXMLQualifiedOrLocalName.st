tests
testIsXMLQualifiedOrLocalName
	self
		deny: ('' isXMLQualifiedOrLocalName: 'name');
		deny: ('' isXMLQualifiedOrLocalName: 'prefix:name');
		assert: ('name' isXMLQualifiedOrLocalName: 'name');
		assert: ('prefix:name' isXMLQualifiedOrLocalName: 'name');
		assert: ('prefix:name' isXMLQualifiedOrLocalName: 'prefix:name');
		deny: ('name' isXMLQualifiedOrLocalName: 'different');
		deny: ('name' isXMLQualifiedOrLocalName: 'prefix:name');
		deny: ('prefix:name' isXMLQualifiedOrLocalName: 'prefix:different');
		deny: ('prefix:name' isXMLQualifiedOrLocalName: 'different:name').

	"test wide char equality for pre-Spur images"
	self assert:
		((String with: 256 asCharacter)
			isXMLQualifiedOrLocalName:
				(String with: 256 asCharacter)).
	self assert:
		((String with: 16r039A asCharacter with: $: with: 16r039B asCharacter)
			isXMLQualifiedOrLocalName:
				(String with: 16r039B asCharacter)).