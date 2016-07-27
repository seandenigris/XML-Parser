private
outdent
	currentIndent
		ifNotNil: [
			currentIndent := currentIndent-1.
			self writeIndent.
			currentIndent := currentIndent-1.]