accessing
setScopedAttributesNamed: aNameCollection from: aDictionary
	| attributes |

	aNameCollection do: [:each |
		(aDictionary at: each ifAbsent: [nil])
			ifNotNil: [:value |
				(attributes ifNil: [attributes := self copiedScopedAttributes])
					at: each
					put: value]].