#DLS
from queue import Queue
adj_list={"A":["B","C"],
          "B":["D","E"],
          "C":["B","F"],
          "D":[],
          "E":["F"],
          "F":[]
          }
state={}
parent={}
trav_step={}
dfs_traversal_op=[]
queue= Queue()



for node in adj_list.keys():
    state[node] = "Idle"
    parent[node] = None
    trav_step[node] = [-1,-1]


step=0

def dfs_func(u):
    global step
    state[u] = "Start"
    trav_step[u][0]=step
    dfs_traversal_op.append(u)
    step+=1

    for v in adj_list[u]:
        if state[v]== "Idle":
            parent [v] = u
            dfs_func(v)

        state[u]= "End"
        trav_step [u][1] = step
        step +=1

dfs_func("C")
print("Traverse:",dfs_traversal_op)