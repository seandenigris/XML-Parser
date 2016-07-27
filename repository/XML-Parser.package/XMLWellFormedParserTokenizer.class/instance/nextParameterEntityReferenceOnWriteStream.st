tokenizing - dtd
nextParameterEntityReferenceOnWriteStream
	| parameterEntity name entity |

	parameterEntity := self topPushedBackEntity.
	name := self nextName.
	self
		expectNext: $;;
		checkNestingOfParameterEntity: parameterEntity.
	
	(entity := driver handleParameterEntityReference: name)
		ifNil: [
			driver preservesUndeclaredEntityReferences
				ifTrue: [
					writeStream
						nextPut: $%;
						nextPutAll: name;
						nextPut: $;].
			^ true].
	self constructReplacementForParameterEntity: entity.
	^ false.