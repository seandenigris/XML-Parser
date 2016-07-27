private
scope
	^ scope ifNil: [self setScope: XMLNamespaceScope new. scope]