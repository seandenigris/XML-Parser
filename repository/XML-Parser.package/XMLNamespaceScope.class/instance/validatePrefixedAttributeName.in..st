validation
validatePrefixedAttributeName: anAttributeName in: aDictionary
	anAttributeName splitQualifiedNameInto: [:prefix :localName |
		prefix ifEmpty: [^ self].

		self
			validatePrefix: prefix
			ofAttributeName: anAttributeName.
		self
			ensureAttributePrefix: prefix
			localName: localName
			hasNoAliasesIn: aDictionary]