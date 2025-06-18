import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

def kmeans(k, X):
    # Initialize centroids randomly from the dataset
    centroids = X[np.random.choice(X.shape[0], k, replace=False)]
    
    while True:
        # Assign clusters
        distances = np.linalg.norm(X[:, np.newaxis] - centroids, axis=2)
        clusters = np.argmin(distances, axis=1)
        
        # Calculate n\ew centroids
        new_centroids = np.array([X[clusters == i].mean(axis=0) for i in range(k)])
        
        # Check for convergence
        if np.all(centroids == new_centroids):
            break
        
        centroids = new_centroids
    
    return clusters

def plot(clusters, X, centroids, title):
    plt.figure()
    for i in range(len(centroids)):
        points = X[clusters == i]
        plt.scatter(points[:, 0], points[:, 1], label=f'Cluster {i}')
    plt.scatter(centroids[:, 0], centroids[:, 1], s=300, c='red', label='Centroids')
    plt.title(title)
    plt.xlabel('Feature 1')
    plt.ylabel('Feature 2')
    plt.legend()
    plt.show()

# Load the Iris dataset
iris = pd.read_csv('iris.csv')
features = iris.iloc[:, :-1].values

# Generate plots for different combinations of features and values of k
feature_combinations = [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]
k_values = [2, 3, 4]

for k in k_values:
    for (i, j) in feature_combinations:
        X = features[:, [i, j]]
        clusters = kmeans(k, X)
        centroids = np.array([X[clusters == idx].mean(axis=0) for idx in range(k)])
        plot(clusters, X, centroids, f'K={k}, Features=({i}, {j})')