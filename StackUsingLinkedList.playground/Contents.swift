//
//  StackUsingLinkedList.swift
//  DS
//
//  Created by Ankush Singh on 07/04/19.
//  Copyright © 2019 Ankush Singh. All rights reserved.
//

import Foundation
class StackUsingLinkedList<T>{
  private var topNode : Node<T>?
  
  func push(element : T) {
    let node = Node(element)
    if topNode == nil {
      topNode = node
    } else {
      node.next = topNode
      topNode = node
    }
  }
  
  func pop() {
    if topNode == nil {
      return
    } else {
      let temp = topNode
      topNode = topNode?.next
      temp?.next = nil
    }
    
  }
  
  func top() -> T? {
    return topNode?.value
  }
  
  func isEmpty() -> Bool {
    if topNode == nil {
      return true
    }
    return false
  }
  
  func printStack(){
    var current = topNode
    
    while current != nil {
      print("\(String(describing: current?.value))->")
      current = current?.next
    }
  }
}
