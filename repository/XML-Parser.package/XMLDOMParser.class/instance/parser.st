parsing
parser
	| parser |

	parser := super parser.
	(self nodeStack isEmpty or: [self topNode isElement not])
		ifFalse: [
			self
				configuration: self topNode configuration;
				document: self topNode document.
			parser driver
				rootElement: self topNode name;
				currentScope: self topNode namespaceScope].

	^ parser.