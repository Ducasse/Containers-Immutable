Class {
	#name : #StateProcessorTest,
	#superclass : #TestCase,
	#category : #'Containers-Immutable-Tests'
}

{ #category : #resources }
StateProcessorTest >> stackPop [
	^ StateProcessor withBlock: [ :aStack | { aStack unsafeFirst. aStack unsafeRest } ]
]

{ #category : #resources }
StateProcessorTest >> stackPush: aValue [
	^ StateProcessor withBlock: [ :aStack | { nil. aStack cons: aValue } ]
]

{ #category : #tests }
StateProcessorTest >> testBasicStuff [
	| p |
	p := (self stackPush: 3) >> (self stackPush: 4) >> self stackPop.
	self assert: ((p runState: List empty) seq destructure: [ :result :stack | result = 4 and: [ stack = { 3 } seq ] ]).
]
