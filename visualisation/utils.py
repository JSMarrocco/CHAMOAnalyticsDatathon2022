import numpy as np
import matplotlib.pyplot as plt

def plot_ensemble_preds_with_error(x, ensemble_y_preds, y):
    mean_ensemble_y_preds = np.mean(ensemble_y_preds, axis=1)
    var_ensemble_y_preds = np.var(ensemble_y_preds, axis=1)

    _, ax = plt.subplots()
    ax.plot(x, mean_ensemble_y_preds, '-', color='blue')
    ax.fill_between(x, mean_ensemble_y_preds - var_ensemble_y_preds, mean_ensemble_y_preds + var_ensemble_y_preds, alpha=0.2)
    ax.plot(x, y, '-', color='green')

    plt.show()

def test_plot_ensemble_preds_with_error():
    import random 

    x = [i for i in range(30)]
    y = [i for i in range(30)]

    variance = 5
    gen_x = lambda _: np.array([i - variance/2 + random.random()*variance for i in range(30)])
    ensemble_y_preds = np.transpose(np.array([gen_x(i) for i in range(5)]))

    plot_ensemble_preds_with_error(x, ensemble_y_preds, y)


test_plot_ensemble_preds_with_error()