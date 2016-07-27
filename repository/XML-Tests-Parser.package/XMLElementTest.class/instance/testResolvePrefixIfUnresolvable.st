tests
testResolvePrefixIfUnresolvable
	| element |

	element := self nodeClass new.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(element
				resolvePrefix: prefix
				ifUnresolvable: [#absent]) = #absent.
		element declarePrefix: prefix uri: uri.
		self assert:
			(element
				resolvePrefix: prefix
				ifUnresolvable: [#absent]) = uri].
	self
		assert:
			(element
				resolvePrefix: 'xml'
				ifUnresolvable: [#absent]) = XMLNamespaceScope xmlNamespaceURI;
		assert:
			(element
				resolvePrefix: 'xmlns'
				ifUnresolvable: [#absent]) = XMLNamespaceScope xmlnsNamespaceURI.