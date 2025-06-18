import numpy as np
import matplotlib.pyplot as plt
import helpers as hlp

def svm_train_multiclass(training_data):
    data, Y = training_data
    W = []
    B = []
    
    for i in range(1, Y+1):
        # Create binary labels for the current class vs rest
        binary_labels = np.where(data[:, 2] == i, 1, -1)
        binary_data = np.copy(data)
        binary_data[:, 2] = binary_labels
        
        # Train SVM for the current class
        w, b = svm_train_brute(binary_data)
        W.append(w)
        B.append(b)
    
    return np.array(W), np.array(B)

def svm_test_multiclass(W, B, x):
    distances = []
    
    for i in range(len(W)):
        distance = np.dot(W[i], x) + B[i]
        distances.append(distance)
    
    distances = np.array(distances)
    
    if np.all(distances <= 0):
        return -1  # Belongs to no class
    
    return np.argmax(distances) + 1  # Return the class with the maximum distance

def plot_decision_boundaries(data, W, B):
    hlp.plot_training_data_multi(data)
    
    x_min, x_max = plt.xlim()
    y_min, y_max = plt.ylim()
    
    xx, yy = np.meshgrid(np.linspace(x_min, x_max, 200), np.linspace(y_min, y_max, 200))
    grid = np.c_[xx.ravel(), yy.ravel()]
    
    for i in range(len(W)):
        Z = np.dot(grid, W[i]) + B[i]
        Z = Z.reshape(xx.shape)
        plt.contour(xx, yy, Z, levels=[0], colors='k', linestyles='--')
    
    plt.show()

# Generate training data
training_data = hlp.generate_training_data_multi(1)

# Train SVMs
W, B = svm_train_multiclass(training_data)

# Plot training data and decision boundaries
plot_decision_boundaries(training_data[0], W, B)

# Test the SVMs
test_point = np.array([1, 1])
predicted_class = svm_test_multiclass(W, B, test_point)
print(f"Predicted class for test point {test_point}: {predicted_class}")