private
pop
	| oldTop |
	oldTop := self stack removeLast.
	entity := oldTop.
	^oldTop