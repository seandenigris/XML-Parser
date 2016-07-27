tests
prefixedXMLSourceSelectorsNamespacesDisabled
	^ self prefixedXMLSourceSelectors reject: [:each |
		#(startPrefixMapping:uri: endPrefixMapping:) includes: each].
