namespaces
declaredNamespaces
	| namespaces |
	namespaces := self scope prefixMappings copy.
	self defaultNamespace notNil
		ifTrue: [namespaces at: 'xmlns' put: self defaultNamespace].
	^ namespaces.