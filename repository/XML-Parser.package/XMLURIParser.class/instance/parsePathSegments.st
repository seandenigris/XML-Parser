parsing
parsePathSegments
	| pathSegments segment |

	pathSegments := OrderedCollection new.

	segment := self nextPercentEncodedDelimitedBy: PathDelimiters.
	[self peekFor: $/]
		whileTrue: [
			pathSegments addLast: segment.
			segment := self nextPercentEncodedDelimitedBy: PathDelimiters].
	(pathSegments isEmpty
		and: [segment isEmpty])
		ifFalse: [pathSegments addLast: segment].

	^ pathSegments.