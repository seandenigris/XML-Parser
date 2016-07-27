enumerating
bindingsDo: aTwoArgumentBlock
	self boundNamespaces do: [:namespace |
		aTwoArgumentBlock
			value: namespace
			value: (self resolveNamespace: namespace)]