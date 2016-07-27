private
removed: anAttribute
	self stopObserving: anAttribute.
	self attributesByName removeKey: anAttribute name.
	self notifyOf: #removedAttribute: with: anAttribute.