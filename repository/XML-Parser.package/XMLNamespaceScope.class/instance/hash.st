comparing
hash
	| hash |

	hash := self class hash.
	self hasNamespaces
		ifTrue: [hash := hash bitXor: self prefixMappings hash].
	^ hash.