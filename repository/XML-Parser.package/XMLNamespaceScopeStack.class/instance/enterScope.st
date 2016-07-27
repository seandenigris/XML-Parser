scope
enterScope
	self pushScope: (XMLNamespaceScope enclosingScope: self currentScope)