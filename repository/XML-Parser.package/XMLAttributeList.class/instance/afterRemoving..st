private
afterRemoving: anAttribute
	anAttribute removeObserver: self.
	self attributesByName removeKey: anAttribute name.
	self notifyOf: #removedAttribute: with: anAttribute.