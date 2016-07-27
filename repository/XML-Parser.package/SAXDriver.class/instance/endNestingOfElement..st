element nesting
endNestingOfElement: anElementName
	| base |

	(self elementNester hasScopedAttributes
		and: [(base := self elementNester scopedAttributeAt: 'xml:base' ifAbsent: [nil]) notNil])
		ifTrue: [
			self elementNester endElement: anElementName.
			(self elementNester scopedAttributeAt: 'xml:base') = base
				ifFalse: [self removeURI: base]]
		ifFalse: [self elementNester endElement: anElementName]