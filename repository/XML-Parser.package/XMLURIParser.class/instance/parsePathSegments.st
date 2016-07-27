parsing
parsePathSegments
	| pathSegments segment |

	pathSegments := OrderedCollection new.

	segment := self nextPercentEncodedDelimitedBy: '/?#'.
	[self peekFor: $/]
		whileTrue: [
			pathSegments addLast: segment.
			segment := self nextPercentEncodedDelimitedBy: '/?#'].
	(pathSegments isEmpty
		and: [segment isEmpty])
		ifFalse: [pathSegments addLast: segment].

	^ pathSegments.