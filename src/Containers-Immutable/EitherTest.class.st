Class {
	#name : #EitherTest,
	#superclass : #TestCase,
	#category : #'Containers-Immutable-Tests'
}

{ #category : #tests }
EitherTest >> testFlatMap [
	self assert: (((Success withValue: 42) flatMap: [ :v | Success withValue: v * 2 ]) ifSuccess: [ :v | v + 1 ] ifFailure: [ :err | 'failed: ', err asString]) = 85.
	self assert: (((Success withValue: 42) flatMap: [ :v | Failure    withValue: v * 2 ]) ifSuccess: [ :v | v + 1 ] ifFailure: [ :err | 'failed: ', err asString]) = 'failed: 84'.
	self assert: (((Failure    withValue: 42) flatMap: [ :v | Success withValue: v * 2 ]) ifSuccess: [ :v | v + 1 ] ifFailure: [ :err | 'failed: ', err asString]) = 'failed: 42'.

]

{ #category : #tests }
EitherTest >> testIfSuccessIfFailure [
	self assert: ((Success withValue: 42) ifSuccess: [ :v | v + 1 ] ifFailure: [ :err | 'failed: ', err asString]) = 43.
	self assert: ((Failure    withValue: 42) ifSuccess: [ :v | v + 1 ] ifFailure: [ :err | 'failed: ', err asString]) = 'failed: 42'.
	
]

{ #category : #tests }
EitherTest >> testMap [
	self assert: (((Success withValue: 42) map: [ :v | v * 2 ]) ifSuccess: [ :v | v + 1 ] ifFailure: [ :err | 'failed: ', err asString]) = 85.
	self assert: (((Failure    withValue: 42) map: [ :v | v * 2 ]) ifSuccess: [ :v | v + 1 ] ifFailure: [ :err | 'failed: ', err asString]) = 'failed: 42'.
	
]
