private
validateUniquenessOfID: anId inAttribute: anAttribute
	| oldSize |

	"checking size after is faster than includes test"
	oldSize := self ids size.
	(self ids
		add: anId;
		size) > oldSize
		ifFalse: [
			self
				errorDuplicateID: anId
				inAttribute: anAttribute].