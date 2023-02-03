"Cell class represent a sigle unite that compose our LinkedList.
 	instVars:
		data: the data that the cell will contain
		next: <Cell> the next element in the list which is a Cell
		
	

"


Class {
	
	#name : #Cell,
	#superclass : #Object,
	#instVars : [
		'data',
		'next'
	],
	#category : #MyLinkedList
}

{ #category : #accessing }
Cell >> data [ 
"return the attribut data"
^data
]

{ #category : #'instance creation' }
Cell >> newData:value [
"set the data attribut with value"
 data:=value
]

{ #category : #'instance creation' }
Cell >> newNode:link [
"set the next attribut with link"
	next:=link.
	
]

{ #category : #accessing }
Cell >> next [
"return the next attribut"
	^next
]
