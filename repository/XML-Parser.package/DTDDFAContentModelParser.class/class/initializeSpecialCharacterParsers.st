class initialization
initializeSpecialCharacterParsers
	"use Array for faster lookup"
	(SpecialCharacterParsers := Array new: 128)
		at: $( asciiValue put: #parseParen:;
		at: $) asciiValue put: #parseParen:;
		at: $, asciiValue put: #parseBinaryOperator:;
		at: $| asciiValue put: #parseBinaryOperator:;
		at: $? asciiValue put: #parseUnaryOperator:;
		at: $* asciiValue put: #parseUnaryOperator:;
		at: $+ asciiValue put: #parseUnaryOperator: