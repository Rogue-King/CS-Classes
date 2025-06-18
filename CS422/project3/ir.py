import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split

class LinearRegression():
    def __init__(self, learning_rate, iterations):
        self.learning_rate = learning_rate
        self.iterations = iterations
    
    def fit(self, X, y):
        self.X = X
        self.y = y
        self.m, self.n = X.shape
        self.W = np.zeros(self.n)
        self.b = 0
        self.costs = []
        
        for i in range(self.iterations):
            self.update_weights()
        return self
    
    def update_weights(self):
        # gradient descent
        y_pred = self.predict(self.X)
        dW = -(2 * (self.X.T).dot(self.y - y_pred)) / self.m
        db = -2 * np.sum(self.y - y_pred) / self.m
        self.W = self.W - self.learning_rate * dW
        self.b = self.b - self.learning_rate * db
        self.costs.append(self.compute_cost(y_pred))
        return self
    
    def predict(self, X):
        return X.dot(self.W) + self.b

    def mean_squared_error(self, y_true, y_pred):
        return np.mean((y_true - y_pred) ** 2)
    
    def compute_cost(self, y_pred):
        return np.mean((self.y - y_pred) ** 2)

def main():
    
    data = pd.read_csv('salary_data.csv')

    X = data['YearsExperience']
    y = data['Salary']

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=1/3, random_state=42)

    X_train = X_train.values.reshape(-1, 1)
    X_test = X_test.values.reshape(-1, 1)

    model = LinearRegression(learning_rate=0.01, iterations=1000)
    model.fit(X_train, y_train)
    y_pred = model.predict(X_test)

    print('Mean Squared Error:', model.mean_squared_error(y_test, y_pred))

    plt.scatter(X_test, y_test)
    plt.plot(X_test, y_pred, color='red')
    plt.xlabel('Years of Experience')
    plt.ylabel('Salary')
    plt.title('Linear Regression')
    plt.show()

if __name__ == "__main__":
    main()