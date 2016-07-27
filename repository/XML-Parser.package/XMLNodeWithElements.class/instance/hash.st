testing
hash

	^ #(namespace namespaceURI nodes)
		inject: 0
		into: [:total :selector | total bitXor: (self perform: selector) hash]