namespaces
declaresPrefix: aPrefix uri: aUri
	"Did the receiver declare a new prefix/uri pair rather than inheriting one?"

	^ (self isDeclaredPrefix: aPrefix uri: aUri)
		and: [self isRoot
			or: [(self parent resolvePrefix: aPrefix) ~= aUri]]