accessing
aliasesFor: namespace
	"Locate all namespaces that are aliases of the given URI."
	| uri |

	uri := self
		namespaceURIOf: namespace
		ifAbsent: [self errorUndefinedAttributeNamespace: namespace asString].

	^ (self boundNamespaces select: [:ns |
		(self isNamespace: ns boundTo: uri)
			and: [ns ~= namespace]]) asSet