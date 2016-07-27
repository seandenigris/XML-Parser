checking
elementsToEndBeforeStarting: anElementName do: aBlock
	| excludingElement |

	self hasOpenElements
		ifFalse: [^ self].

	(anElementName = 'body'
		or: [anElementName = 'head'
			or: [self currentSectionCannotContain: anElementName]])
		ifTrue: [^ self elementsToEndBeforeEnding: 'html' do: aBlock].

	(((self hasOpenElement: anElementName)
		and: [self cannotNestWithinSelf: anElementName])
		or: [(excludingElement := MutuallyExcludingTags at: anElementName ifAbsent: [nil]) notNil
			and: [self hasOpenElement: excludingElement]])
		ifFalse: [^ self].

	self openElementsReverseDo: [:each |
		aBlock value: each.
		((each = anElementName)
			or: [each = excludingElement])
			ifTrue: [^ self]].