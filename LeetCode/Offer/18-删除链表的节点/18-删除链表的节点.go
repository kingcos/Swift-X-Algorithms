package main

import "fmt"

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

func deleteNode(head *ListNode, val int) *ListNode {
	if head.Val == val {
		return head.Next
	}

	newHead := head

	for head.Next != nil {
		if head.Next.Val == val {
			head.Next = head.Next.Next
		} else {
			head = head.Next
		}

	}

	return newHead
}

func printList(head *ListNode) {
	for head != nil {
		fmt.Printf("%d, ", head.Val)
		head = head.Next
	}
	fmt.Println()
}

func main() {
	l1 := &ListNode{4, nil}
	l1.Next = &ListNode{1, nil}
	l1.Next.Next = &ListNode{8, nil}
	l1.Next.Next.Next = &ListNode{4, nil}
	l1.Next.Next.Next.Next = &ListNode{5, nil}

	printList(deleteNode(l1, 1))
}
