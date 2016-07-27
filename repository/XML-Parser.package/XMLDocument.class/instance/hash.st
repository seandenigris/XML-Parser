testing
hash

	^ (self version hash bitXor: self encoding hash) bitXor: super hash