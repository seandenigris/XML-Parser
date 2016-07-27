entity replacing
checkNestingOfParameterEntity: aParameterEntity
	aParameterEntity
		ifNil: [
			self topPushedBackEntity
				ifNotNil: [driver handleImproperParameterEntityNesting]]
		ifNotNil: [
			self topPushedBackEntity == aParameterEntity
				ifFalse: [driver handleImproperParameterEntityNesting]].