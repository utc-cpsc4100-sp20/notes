# >>> map (conv.number_to_words, range(10))
# <map object at 0x7f6fd0a02588>
# >>> list(map (conv.number_to_words, range(10)))
# ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
# >>> list(map (lambda x : conv.number_to_words(x), range(10)))
# ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
# >>>

import inflect
class WordRange:
    def __init__(self, start, end, inc=1):
        self.value=start
        self.end=end
        self.inc=inc
        self.conv=inflect.engine()

    def __iter__(self):
        return self

    def __next__(self):
        if self.value > self.end:
            raise StopIteration

        w = self.conv.number_to_words(self.value)
        self.value += self.inc
        return w

    
# this is a neat thing
def counter(stop):
    value=0
    while value < stop:
        yield inflect.engine().number_to_words(value)
        value += 1

        
