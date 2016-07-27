testing
hash

	^ (self name hash bitXor: self attributes hash) bitXor: super hash