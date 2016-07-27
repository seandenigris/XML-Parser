parsing
innerXMLParsedWith: aParser
	| oldNodes |

	oldNodes := self nodes asArray.
	self removeNodes.
	[aParser
		pushInnerXMLRootNode: self;
		parseDocument]
		on: Error
		do: [:error |
			self
				removeNodes;
				addNodes: oldNodes.
			error pass].