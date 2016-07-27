accessing
namespaceURI
	| prefix |

	"attributes must have prefixes to be namespaced"
	(self element notNil
		and: [(prefix := self prefix) notEmpty])
		ifFalse: [^ ''].
	
	^ self element resolvePrefix: prefix.