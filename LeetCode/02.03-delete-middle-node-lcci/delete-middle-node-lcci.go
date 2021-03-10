package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

// ListNode Structure
type ListNode struct {
	Val  int
	Next *ListNode
}

func deleteNode(node *ListNode) {
	// 仅知道当前节点，欲删除当前节点
	// 思路：由于删除涉及前驱节点，但单链表无法溯源，因此将
	// Next 节点数据复制到当前节点，并删除原有的 Next 节点
	node.Val = node.Next.Val
	node.Next = node.Next.Next
}
