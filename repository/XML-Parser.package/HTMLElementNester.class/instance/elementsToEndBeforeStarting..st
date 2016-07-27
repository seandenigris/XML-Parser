checking
elementsToEndBeforeStarting: anElementName
	| excludingElement |

	((anElementName = 'body' or: [anElementName = 'head'])
		or: [self headOrBodyCannotContain: anElementName])
		ifTrue: [^ self elementsToEndBeforeEnding: 'html'].

	self elementsToEnd reset.
	(self canNestWithinSelf: anElementName)
		ifTrue: [^ self elementsToEnd].

	excludingElement := self excludingElementFor: anElementName.
	((self hasOpenElement: anElementName)
		or: [excludingElement notEmpty
			and: [self hasOpenElement: excludingElement]])
		ifFalse: [^ self elementsToEnd].

	self openElements reverseDo: [:each |
		((NestableTagGroups includesKey: anElementName)
			and: [(NestableTagGroups at: anElementName) includes: each])
			ifTrue: [^ #()].

		self elementsToEnd addLast: each.
		((each = anElementName)
			or: [excludingElement notEmpty
				and: [excludingElement = each]])
			ifTrue: [^ self elementsToEnd]].

	^ self elementsToEnd.
	