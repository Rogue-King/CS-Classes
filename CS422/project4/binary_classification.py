import numpy as np
import matplotlib.pyplot as plt
import helpers as hlp

def svm_train_brute(training_data):
    best_margin = -np.inf
    best_w = None
    best_b = None
    support_vectors = None

    # Iterate over all possible combinations of 2 or 3 support vectors
    for i in range(len(training_data)):
        for j in range(i + 1, len(training_data)):
            for k in range(j + 1, len(training_data)):
                pts = training_data[[i, j, k], :2]
                labels = training_data[[i, j, k], 2]

                # Solve for w and b using the support vectors
                A = np.c_[pts, np.ones(3)]
                b = labels
                try:
                    sol = np.linalg.solve(A, b)
                    w = sol[:2]
                    b = sol[2]
                    
                    # Compute the margin
                    margin = hlp.compute_margin(training_data, w, b)
                    
                    # Update the best margin if found a better one
                    if margin > best_margin:
                        best_margin = margin
                        best_w = w
                        best_b = b
                        support_vectors = training_data[[i, j, k]]
                except np.linalg.LinAlgError:
                    continue

    return best_w, best_b, support_vectors

def main():
    for num in range(1, 5):
        data = hlp.generate_training_data_binary(num)
        w, b, support_vectors = svm_train_brute(data)
        if w is not None and b is not None:
            print(f"Dataset {num}:")
            print(f"w: {w}, b: {b}")
            print(f"Support Vectors: {support_vectors}")
            hlp.plot_training_data_binary(data)
            x = np.linspace(-10, 10, 100)
            y = -(w[0] * x + b) / w[1]
            plt.plot(x, y, 'k-')
            plt.show()
        else:
            print(f"Dataset {num}: No valid solution found.")

if __name__ == "__main__":
    main()