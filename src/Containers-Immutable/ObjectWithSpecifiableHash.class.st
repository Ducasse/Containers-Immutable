"
So that the HashMap tests can reliably create different objects that have hash collisions.
"
Class {
	#name : #ObjectWithSpecifiableHash,
	#superclass : #Object,
	#instVars : [
		'hash'
	],
	#category : #'Containers-Immutable-Tests'
}

{ #category : #'as yet unclassified' }
ObjectWithSpecifiableHash class >> createWithHash: h [
	^ self new initializeWithHash: h
]

{ #category : #comparing }
ObjectWithSpecifiableHash >> = other [
	^ self == other
]

{ #category : #comparing }
ObjectWithSpecifiableHash >> hash [
	^ hash
]

{ #category : #initialization }
ObjectWithSpecifiableHash >> initializeWithHash: h [
	hash := h.
]
