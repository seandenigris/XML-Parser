class initialization
initializeSpecialCharacterParsers
	"use Array for faster lookup"
	(SpecialCharacterParsers := Array new: 255)
		at: $( asciiValue put: #parseOpeningParenthesis:;
		at: $) asciiValue put: #parseClosingParenthesis:;
		at: $, asciiValue put: #parseBinaryOperator:;
		at: $| asciiValue put: #parseBinaryOperator:;
		at: $? asciiValue put: #parseUnaryOperator:;
		at: $* asciiValue put: #parseUnaryOperator:;
		at: $+ asciiValue put: #parseUnaryOperator: