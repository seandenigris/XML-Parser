private
with: aBlock remove: aNode

	self
		with: [
			aBlock value.
			self parent ifNotNil: [self parent nodeRemoved: aNode]]
		onError: [^ nil].
	^ aNode.