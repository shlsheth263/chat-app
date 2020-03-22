class Task:
    def __init__(self, name, weight):
        self.name = name
        self.weight = weight


class Schedule:
    def __init__(self, day, task):
        self.day = day
        self.task = task

def generateSchedule(tasks,deadline):
    schedule = []

    daysForEachTask = int(deadline/len(tasks))

    tasks = sorted(tasks, key = lambda task : task.weight, reverse=True)
    

    numTask = 0
    start = 0
    end = daysForEachTask-1
    for i in range(0,deadline):
        if i>=start and i<=end:
            schedule.append(Schedule(i+1, tasks[numTask]))
        else:
            numTask += 1
            start = end
            end += daysForEachTask
            schedule.append(Schedule(i+1, tasks[numTask]))
    
    return schedule
        

###  DRIVER CODE ####
numTasks = int(input("Number of tasks : "))
deadline = int(input("Deadline : "))
tasks = []


if numTasks>deadline:
    print("Not possible")
    print("Pray to God🙏🙏🙏")

else : 
    for i in range(0,numTasks):
        name = input("Enter Name of task : ")
        weight = input("Enter weight of the task (from 1 to 10) : ")
        task = Task(name, weight)
        tasks.append(task)

    schedule = generateSchedule(tasks,deadline)

    for s in schedule:
        print("Day", s.day, ":", s.task.name, sep=' ')



