tests
testUnmapPrefixIfAbsent
	| scope |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |  | oldPrefixMappings |
		self assert:
			(scope
				unmapPrefix: prefix
				ifAbsent: [#absent]) = #absent.
		scope
			mapPrefix: prefix
			to: uri.

		oldPrefixMappings := scope prefixMappings.
		self assert:
			(scope
				unmapPrefix: prefix
				ifAbsent: [#absent]) = uri.

		"ensure prefixMappings is copied when removing"
		self
			deny: (scope prefixMappings includesKey: prefix);
			deny: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings.

		self
			assert:
				(scope
					unmapPrefix: prefix
					ifAbsent: [#absent]) = #absent].
	self assert: scope prefixMappings isEmpty.