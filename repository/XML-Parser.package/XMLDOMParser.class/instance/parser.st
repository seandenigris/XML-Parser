parsing
parser
	| parser |

	parser := super parser.
	(self nodeStack notEmpty and: [self topNode isElement])
		ifTrue: [
			self
				configuration: self topNode configuration;
				document: self topNode document.
			parser driver
				setRootElement: self topNode name
				currentScope: self topNode namespaceScope].

	^ parser.