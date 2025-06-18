import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

def knn(k, X_train, y_train, X_test, y_test):
    y_pred = []
    for i in range(len(X_test)):
        dist = np.sqrt(np.sum((X_train - X_test[i])**2, axis=1))
        nearest = np.argsort(dist)[:k]
        y_nearest = y_train[nearest]
        y_pred.append(np.bincount(y_nearest).argmax())
    accuracy = np.mean(y_pred == y_test)

    return accuracy

def main():
    # Load data "sepal.length","sepal.width","petal.length","petal.width","variety"
    data = pd.read_csv('iris.csv')

    # Split data into training and testing sets
    X = data.iloc[:, :-1].values
    y = data.iloc[:, -1].values
    np.random.seed(0)
    idx = np.random.permutation(len(X))
    X_train = X[idx[:100]]
    y_train = y[idx[:100]]
    X_test = X[idx[100:]]
    y_test = y[idx[100:]]
    k = 3
    accuracy = knn(k, X_train, y_train, X_test, y_test)
    print('Accuracy: ', accuracy)

if __name__ == '__main__':
    main()