checking
startElement: anElementName
	| association |

	association :=
		self openElementsByName
			associationAt: anElementName
			ifAbsent: [self openElementsByName add: (anElementName -> 0)].
	association value: association value + 1.

	super startElement: anElementName.