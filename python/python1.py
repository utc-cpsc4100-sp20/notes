
# tuple packing, unpacking
# >>> a=10
# >>> b=20
# >>> [a,b]=[b,a]

# list comprehensions
# >>> nums = [ n*2 for n in range(10) if n%2]
# >>> nums
# [2, 6, 10, 14, 18]

# lazy stuff

# >>> x
# range(0, 10)
# >>> list(x)
# [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# >>> map(str,range(10))
# <map object at 0x7f5532d395c0>
# >>> list(map(str,range(10)))
# ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
# >>> map(str,list(range(10)))
# <map object at 0x7f5532d39630>

for x in range(10):
    print(x)

    if x==50:
        break

else:
        print('the end')
    
