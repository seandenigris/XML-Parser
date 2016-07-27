split and merge
mergeAdjacent
	| parentNodes selfIndex adjacentNode |

	self hasParent
		ifFalse: [^ self].

	parentNodes := self parent nodes.
	selfIndex := parentNodes indexOf: self.
	[(adjacentNode := parentNodes at: selfIndex + 1) notNil
		and: [adjacentNode isStringNode]]
		whileTrue: [
			self append: adjacentNode.
			parentNodes removeAt: selfIndex + 1].

	[(adjacentNode := parentNodes at: selfIndex - 1) notNil
		and: [adjacentNode isStringNode]]
		whileTrue: [
			self prepend: adjacentNode.
			parentNodes removeAt: selfIndex - 1.
			selfIndex := selfIndex - 1].