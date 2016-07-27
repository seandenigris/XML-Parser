notifications
addedAttribute: anAttribute
	self beParentOf: anAttribute.
	self validateAttributeName: anAttribute name.