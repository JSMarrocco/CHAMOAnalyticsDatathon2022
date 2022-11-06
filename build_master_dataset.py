import pathlib
import pandas as pd


def save_to_csv(df, file_name="out.csv"):
    """
    Saves a dataframe in a csv with the name
    "out.csv" in "out" directory.
    Input:
        df
    """
    crnt_dir = pathlib.Path(__file__).parent.resolve()
    df.to_csv(crnt_dir/file_name, index=False)


if __name__ == '__main__':
    crnt_dir = pathlib.Path(__file__).parent.resolve()

    er_dir = crnt_dir/'exchange_rate'/'out'/'exchange_rates.csv'
    sentiment_dir = crnt_dir/'sentiment'/'out'/'finance_sentiment_pp.csv'
    ti_dir = crnt_dir/'technical_indicators'/'out'/'ti.csv'

    dfs = []
    final_df = pd.DataFrame({'date': []})
    for file_path in [er_dir, sentiment_dir, ti_dir]:
        df = pd.read_csv(file_path)
        final_df = pd.merge(final_df, df, on='date', how='outer')
    save_to_csv(final_df, file_name='master_dataset.csv')
