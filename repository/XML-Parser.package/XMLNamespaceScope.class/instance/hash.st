comparing
hash
	| hash |

	hash := self class hash.
	self prefixesAndURIsDo: [:prefix :uri | hash := hash bitXor: uri].
	^ hash.