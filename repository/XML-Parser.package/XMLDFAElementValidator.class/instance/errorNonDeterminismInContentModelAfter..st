private
errorNonDeterminismInContentModelAfter: aName
	XMLValidationException
		formatSignal:
			'Content model for <{1}> becomes non-deterministic after <{2}>. ',
			'Rewrite it deterministically; for example "(a,(b|c))" instead ',
			'of "((a,b)|(a,c))"'
		with: self element
		with: aName