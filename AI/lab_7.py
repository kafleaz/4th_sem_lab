print("---Az Kafle----\n")
import numpy as np 
from random import choice 
print("\t---Neural Network Implementation----\n") 
print("...Using Single Layered Perceprton....\n") 
np.random.seed(2) 
activation_function = lambda x:0 if x<0 else 1 
training_data = [ (np.array([0,1,1]),1), 
(np.array([1,0,1]),1), 
(np.array([0,0,1]),0) 
] 
# model parameters 
#learning rate is a configuration parameter that controls the amount that weights are updated, 
learning_rate = 0.2 
#the single step that takes to do forward and backward propagation. 
training_steps = 100 # 
#initialize weights 
W = np.random.rand(3) 
for i in range(training_steps):
    x, y = choice(training_data) 
#Compute dot Product between input (X) and weights matrix (W) l1 = np.dot(W, x) 
#Apply the activation function on the l1. #l1 is actually the output of our network. 
y_pred = activation_function(11)
error = y - y_pred 
 
# model predicts the class correctly the error is equal to zero and no changes are done on the weights, 
# but if it makes a mistake, then we can have a negative (decrease) or positive (increase) update on the weights. 
 
update = learning_rate * error * x 
W += update 
# Output after training 
print("Predictions after training on the training dataset:") 
for x, _ in training_data:   
    y_pred = np.dot(x, W) 
print("{}: {}".format(x[:2], activation_function(y_pred))) 
print("\nPrediction for the dataset [1, 1, 0]:\n") 
y_predict = np.dot([1, 1, 0], W) 
print("[1, 1]: ", activation_function(y_predict)) 
