private
beParentOf: aNode
	self startObserving: aNode.
	aNode parent: self.