parsing
parser
	| parser |

	parser := super parser.
	self nodeStack notEmpty
		ifTrue: [| root |
			root := self topNode.
			self
				configuration: root configuration;
				document: root document.
			parser initialContext: root innerXMLContext.
			root isElement
				ifTrue: [
					parser driver
						setRootElement: root name
						currentScope: root namespaceScope]].

	^ parser.