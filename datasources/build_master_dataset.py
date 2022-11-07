import pathlib
import pandas as pd
from post_process import rename_columns


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
    fin_sentiment_dir = crnt_dir/'sentiment_fin_dic'/'out'/'finance_sentiment_pp.csv'
    fin_sentiment_dir_can = crnt_dir/'sentiment_fin_dic' / \
        'out'/'finance_sentiment_can_pp.csv'
    transformer_sentiment_dir = crnt_dir / \
        'sentiment_transformer'/'out'/'transformer_sentiment.csv'
    # transformer_sentiment_dir_can = crnt_dir / \
    #     'sentiment_transformer'/'out'/'transformer_sentiment_can.csv'
    ti_dir = crnt_dir/'technical_indicators'/'out'/'ti.csv'
    can_indexes_dir = crnt_dir/'indexes'/'out'/'CA_indices.csv'
    us_indexes_dir = crnt_dir/'indexes'/'in'/'US'/'US_Bank_Rate.csv'

    dfs = []
    final_df = pd.DataFrame({'date': []})
    for file_path in [er_dir, fin_sentiment_dir, fin_sentiment_dir_can, ti_dir, can_indexes_dir, us_indexes_dir, transformer_sentiment_dir]:
        df = pd.read_csv(file_path)
        final_df = pd.merge(final_df, df, on='date', how='outer')
    # Sort them by date
    final_df['date'] = pd.to_datetime(final_df.date)
    final_df = final_df.sort_values(by='date')
    final_df = rename_columns(final_df)
    save_to_csv(final_df, file_name='master_dataset.csv')
