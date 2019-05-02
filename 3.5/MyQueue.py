
class MyQueue:

    def __init__(self):
        self.stacks = [[], []]

    def enqueue(self, v):
        self.stacks[0].append(v)


    def dequeue(self):
        l = len(self.stacks[0])
        if l == 0:
            return None

        for i in range(l - 1):
            self.stacks[1].append(self.stacks[0].pop())

        ret = self.stacks[0].pop()

        for i in range(l - 1):
            self.stacks[0].append(self.stacks[1].pop())

        return ret


if __name__ == '__main__':

    queue = MyQueue()

    while True:
        a = input()
        if a == 'end':
            break
        queue.enqueue(a)


    while True:
        a = queue.dequeue()
        if a == None:
            break
        print(a)
