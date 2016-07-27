writing xml
endElement: anElementName
	self nestedScopes leaveScope.
	self endTag: anElementName.