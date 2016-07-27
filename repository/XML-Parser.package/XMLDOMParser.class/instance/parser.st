parsing
parser
	| parser |

	parser := super parser.
	(self nodeStack notEmpty and: [self topNode isElement])
		ifTrue: [
			self configuration: self topNode configuration.
			self topNode document
				ifNotNil: [:node | self document: node].
			parser driver
				setRootElement: self topNode name
				currentScope: self topNode namespaceScope].

	^ parser.