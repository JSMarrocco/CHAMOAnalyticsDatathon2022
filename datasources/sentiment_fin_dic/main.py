import pandas as pd

from utils import load_FOMC_datasets, save_to_csv, load_CAN_datasets
from sentiment_analysis import measure_finance_sentiment, SENTIMENTS
from post_processing import post_process


def filter_columns(df):
    return df.filter(items=['date', *SENTIMENTS, 'optimistic'])


def main(use_US=True):
    if use_US:
        dfs = load_FOMC_datasets()
    else:
        dfs = load_CAN_datasets()
    tmp_dfs = []
    for i, df in enumerate(dfs):
        print(f"---- Analyzing dataset {i+1} on {len(dfs)}")
        df = measure_finance_sentiment(df)
        df = filter_columns(df)
        tmp_dfs.append(df)
    # Merge all dataframes together
    df = pd.concat(tmp_dfs)
    # Sort them by date
    df['date'] = pd.to_datetime(df.date)
    df = df.sort_values(by='date')
    # Save to csv
    if use_US:
        file_name = 'finance_sentiment.csv'
    else:
        file_name = 'finance_sentiment_can.csv'
    save_to_csv(df, file_name=file_name)
    post_process(df, file_name='finance_sentiment_can_pp.csv')


if __name__ == "__main__":
    main(use_US=False)
