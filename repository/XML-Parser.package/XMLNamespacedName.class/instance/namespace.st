accessing
namespace
	^ (self hasPrefix
		ifTrue: [self prefix]
		ifFalse: [self namespaceURI])