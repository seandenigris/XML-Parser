private
endNestingOfElement: anElementName withScopedAttributes: anAttributeDictionary
	| base |

	(base := anAttributeDictionary at: 'xml:base' ifAbsent: [nil])
		ifNotNil: [
			(self elementNester
				endElement: anElementName;
				scopedAttributeAt: 'xml:base') = base
				ifFalse: [self removeURI: base]]
		ifNil: [self elementNester endElement: anElementName]