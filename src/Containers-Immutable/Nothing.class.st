Class {
	#name : #Nothing,
	#superclass : #Maybe,
	#category : #'Containers-Immutable-Monads'
}

{ #category : #initialize }
Nothing class >> initialize [
	self singletonInstance.
]

{ #category : #initialize }
Nothing class >> singletonInstance [
	"Don't call this method, just access the global 'nothing' directly."
	^ Smalltalk globals at: #nothing ifAbsentPut: [ self new ]
]

{ #category : #'pattern-matching' }
Nothing >> ifAbsent: nothingBlock ifPresent: somethingBlock [
	^ nothingBlock value
]

{ #category : #'pattern-matching' }
Nothing >> ifPresent: somethingBlock ifAbsent: nothingBlock [
	^ nothingBlock value
]
