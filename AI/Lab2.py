from queue import Queue 
adj_list = {
    "A" : ["B", "D"], 
    "B" : ["A", "C"], 
    "C" : ["B"], 
    "D" : ["A","E", "F"], 
    "E" : ["D","F", "G"], 
    "F" : ["D","E", "H"], 
    "G" : ["E", "H"], 
    "H" : ["G", "F"] 
} 
visited = {} 
level = {} 
parent = {} 
bfs_traversal_op = [] 
queue = Queue() 
 
for node in adj_list.keys():     
    visited[node] = False     
    level[node] = -1     
    parent[node] = None 
s = "A" 
visited[s] = True 
level[s] = 0 
queue.put(s) 
u = "" 
while not u == "E": # while not queue.empty():     
    u = queue.get()     
    bfs_traversal_op.append(u)     
    # if (u == "C"):     
    # break     
    for v in adj_list[u]:         
        if not visited[v]:             
            visited[v] = True             
            parent[v] = u             
            level[v] = level[u] + 1             
            queue.put(v) 
print(bfs_traversal_op) 

