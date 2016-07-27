tests
testOnURLUpToLimit
	| parser size |

	self skipOrReturnWith: [^ self].

	size := (self feedURL asXMLURI get) contents size.
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