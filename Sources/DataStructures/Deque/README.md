# Stack
This is a Deque (double ended queue) implementation.  
![FIFO stack](Deque.png)  
Picture [*source*](https://www.geeksforgeeks.org/different-types-of-queues-and-its-applications/)

## Table of contens
- [EnqueueFront](#enqueueFront)
- [DequeueFront](#dequeueFront)
- [PeekFront](#peekFront)
- [EnqueueRear](#enqueueRear)
- [DequeueRear](#dequeueRear)
- [PeekRear](#peekRear)
- [IsEmpty](#isEmpty)
- [Size](#size)
- [Erase](#erase)
- [Test coverage](#test-coverage)

<a name="enqueueFront"></a>
### EnqueueFront()
Method that append item to the left end of queue.  
Complexity: *O(1)*

<a name="dequeueFront"></a>
### DequeueFront()
Method that remove item from the left end of queue. Return value of item. Can return **nil** if queue was empty.  
Complexity: *O(1)*

<a name="peekFront"></a>
### PeekFront()
Method allow to see what value is in front of the queue. Can return **nil** if queue is empty.  
Complexity: *O(1)*

<a name="enqueueRear"></a>
### EnqueueRear()
Method that append item to the right end of queue.  
Complexity: *O(1)*

<a name="dequeueRear"></a>
### DequeueRear()
Method that remove item from the right end of queue. Return value of item. Can return **nil** if queue was empty.  
Complexity: *O(1)*

<a name="PeekRear"></a>
### PeekRear()
Method allow to see what value is in rear of the queue. Can return **nil** if queue is empty.  
Complexity: *O(1)*

<a name="isEmpty"></a>
### IsEmpty
Property that return true if queue is empty.  
Complexity: *O(1)*

<a name="size"></a>
### Size
Property that return elements count of queue.  
Complexity: *O(1)*

<a name="erase"></a>
### Erase()
Method that remove all elements from queue.  
Complexity: *O(n)*


### Test coverage
![test-coverage](DequeTests.png)
