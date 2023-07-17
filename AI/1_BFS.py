from queue import Queue
adj_list={"A":["B","D"],
          "B":["A","C"],
          "C":[],
          "D":["E","F"],
          "E":["G","F"],
          "F":["E","H"],
          "G":["H","E"],
          "H":["F","G"]
          }
visited={}
level={}
parent={}
bfs_traversal_op=[]
queue= Queue()

for node in adj_list.keys():
    visited[node] = False
    parent[node] = None
    level[node] = -1

s="A"
visited[s]=True
level[s]=0

queue.put(s)

while not queue.empty():
    u=queue.get()
    bfs_traversal_op.append(u)

    for v in adj_list[u]:
        if not visited[v]:
            visited[v]=True
            parent[v] = u
            level[v]=level[u]+1
            queue.put(v)

print("Traverse:",bfs_traversal_op)


print("Parent:",parent)
print("Level:",level["F"])
