tokenizing - dtd
nextParameterEntityReference
	| parameterEntity name |

	parameterEntity := self topPushedBackEntity.
	name := self nextName.
	self
		expectNext: $;;
		checkNestingOfParameterEntity: parameterEntity.

	(driver handleParameterEntityReference: name)
		ifNotNil: [:entity | self constructReplacementForParameterEntity: entity].