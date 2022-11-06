import pandas as pd

from utils import load_datasets, save_to_csv
from sentiment_analysis import measure_finance_sentiment, SENTIMENTS
from post_processing import post_process


def filter_columns(df):
    return df.filter(items=['date', *SENTIMENTS, 'optimistic'])


def main():
    dfs = load_datasets()
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
    save_to_csv(df, file_name='finance_sentiment.csv')
    post_process()


if __name__ == "__main__":
    main()
