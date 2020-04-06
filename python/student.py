class Student:
    def __init__(self, name, age):
        self.__name = name
        self.__age = age

    @property
    def name(self):
        # print ('in the getter')
        return self.__name

    @name.setter
    def name(self, value):
        # print ('in the setter')
        if (value == 'craig'):
            raise ValueError('not him!')
        self.__name=value


    def talk(self):
        print("I am " + self.name)



class Robot:
    def talk(self):
        print("the robot is speaking")


# takes advantage of duck typing:
def interrogate(talker):
    talker.talk()
    
