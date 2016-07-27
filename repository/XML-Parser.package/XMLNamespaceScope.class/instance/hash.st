comparing
hash
	| hash |

	hash := self species hash.
	self hasNamespaces
		ifTrue: [hash := hash bitXor: self prefixMappings hash].
	^ hash.