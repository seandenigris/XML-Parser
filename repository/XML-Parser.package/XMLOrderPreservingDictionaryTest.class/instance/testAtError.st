tests
testAtError	
	| dict keyIn |

	dict := self nonEmpty.
	keyIn := dict keys anyOne.
	
	self
		shouldnt: [dict at: keyIn] raise: Error;
		shouldnt: [dict at: self keyNotIn] raise: Error.