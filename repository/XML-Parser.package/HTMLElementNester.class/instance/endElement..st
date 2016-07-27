checking
endElement: anElementName
	| association |

	association :=
		self openElementsByName
			associationAt: anElementName
			ifAbsent: [self openElementsByName add: (anElementName -> 1)].
	association value: (association value - 1 max: 0).

	super endElement: anElementName.