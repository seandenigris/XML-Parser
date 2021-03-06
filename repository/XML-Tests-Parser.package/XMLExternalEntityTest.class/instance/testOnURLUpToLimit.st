tests
testOnURLUpToLimit
	| parser size |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	size :=
		(self feedURL asXMLURI
			getUpToLimit: nil
			decoding: false) size.
	self
		shouldnt: [
			parser :=
				SAXHandler
					onURL: self feedURL
					upToLimit: size]
		raise: XMLLimitException.
	self assert: parser documentReadLimit = size.

	self
		should: [
			(SAXHandler
				onURL: self feedURL
				upToLimit: size - 1)
				parseDocument]
		raise: XMLLimitException.