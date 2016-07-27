private
nodeName
	^ name ifNil: [
		(name := XMLNodeName new)
			addObserver: self;
			yourself]