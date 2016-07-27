accessing
elementsToEndBeforeStarting: anElementName
	| toClose excludingElement |

	(self canNestWithinSelf: anElementName)
		ifTrue: [^ #()].

	excludingElement := self excludingElementFor: anElementName.
	((self hasOpenElement: anElementName)
		or: [excludingElement notEmpty
			and: [self hasOpenElement: excludingElement]])
		ifFalse: [^ #()].

	toClose := OrderedCollection new.
	self openElements reverseDo: [:each |
		((NestableTagGroups includesKey: anElementName)
			and: [(NestableTagGroups at: anElementName) includes: each])
			ifTrue: [^ #()].
		toClose addLast: each.
		((each = anElementName)
			or: [excludingElement notEmpty
				and: [excludingElement = each]])
			ifTrue: [^ toClose]].
	^ toClose.

	