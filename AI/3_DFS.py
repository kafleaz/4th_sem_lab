#DFS
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
target_node= "D"
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
    
    if u == target_node:
        print("Traverse to target:",dfs_traversal_op)

    for v in adj_list[u]:
        if state[v]== "Idle":
            parent [v] = u
            dfs_func(v)
            

        state[u]= "End"
        trav_step [u][1] = step
        step +=1

dfs_func("C")
print("Traverse:",dfs_traversal_op)



# s="A"
# visited[s]=True
# level[s]=0

# queue.put(s)
# u=""
# while not u=="C":
# # while not queue.empty():
#     u=queue.get()
#     bfs_traversal_op.append(u)
    
#     # if(u == "C"):
#     #     break

#     for v in adj_list[u]:
#         if not visited[v]:
#             visited[v]=True
#             parent[v] = u
#             level[v]=level[u]+1
#             queue.put(v)
# print("Traverse:",bfs_traversal_op)

# # print("Parent:",parent)
# # print("Level:",level["F"])
