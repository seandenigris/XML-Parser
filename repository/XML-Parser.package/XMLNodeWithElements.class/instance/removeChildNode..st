private
removeChildNode: aNode

	self nodes
		remove: (aNode parent: nil)
		ifAbsent: nil