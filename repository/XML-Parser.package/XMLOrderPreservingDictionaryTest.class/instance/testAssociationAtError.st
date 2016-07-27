as yet unclassified
testAssociationAtError
	self shouldnt: [self nonEmpty associationAt: self keyNotIn] raise: Error.