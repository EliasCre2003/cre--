# class Routine:
#     def __init__(self, function, *args):
#         self.function = function
#         self.args = args

#     def execute(self):
#         self.function(*self.args)

#     def __eq__(self, routine: "Routine") -> bool:
#         return self.function == routine.function and self.args == routine.args
    

# def sak(a, b):
#     print(a, b)

# r = {Routine(sak, 1, 2), Routine(sak, 1, 2)}

# print(r)

a = [1, 2, 3, 4, 5]
b = [10, 20, 30, 40, 50]

for i, j in zip(a, b):
    print(i, j)