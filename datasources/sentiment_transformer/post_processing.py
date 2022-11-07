import pathlib
import pandas as pd
from copy import deepcopy
import datetime


def get_date(df, i):
    return datetime.date(*[int(d) for d in df.iloc[i]['date'].strftime('%Y-%m-%d').split('-')])


def save_to_csv(df, file_name="out.csv"):
    """
    Saves a dataframe in a csv with the name
    "out.csv" in "out" directory.
    Input:
        df
    """
    crnt_dir = pathlib.Path(__file__).parent.resolve()
    out_dir = crnt_dir/'out'
    out_dir.mkdir(parents=True, exist_ok=True)
    df.to_csv(out_dir/file_name, index=False)


def fill_missing_dates(df):
    # Sort them by date
    df['date'] = pd.to_datetime(df.date)
    df = df.sort_values(by='date')
    crnt_date = get_date(df, 0)
    last_date = get_date(df, -1)
    one_day = datetime.timedelta(days=1)

    last_row = df.iloc[0].to_dict()
    df_t = []
    while crnt_date <= last_date:
        entries = df[df['date'] == crnt_date.strftime("%Y-%m-%d")]
        if len(entries) > 0:
            # If there is more than one entry for a given date, sum entries together
            if len(entries) > 1:
                r = entries.mean()
            elif len(entries) == 1:
                r = entries
                r = r.iloc[0]
            r = r.to_dict()
            last_row = r
        else:
            # If there is no entry for the given date, just repeat the last value seen
            r = deepcopy(last_row)

        # Append value to list and increment
        r['date'] = crnt_date.strftime("%Y-%m-%d")
        df_t.append(r)
        crnt_date += one_day

    return pd.DataFrame(df_t)


if __name__ == '__main__':
    crnt_dir = pathlib.Path(__file__).parent.resolve()

    # dfs = []
    # for file_path in (crnt_dir/'sentiments').iterdir():
    #     df = pd.read_csv(file_path)
    #     df = df.filter(items=['date', 'fin_sentiment', 'gen_sentiment'])
    #     dfs.append(df)
    # dfs = pd.concat(dfs)
    # dfs = fill_missing_dates(dfs)
    # save_to_csv(dfs, file_name='transformer_sentiment.csv')

    file_path = crnt_dir/'sentiments'/'can_bank_statements.csv'
    df = pd.read_csv(file_path)
    df = df.filter(items=['date', 'fin_sentiment', 'gen_sentiment'])
    df = fill_missing_dates(df)
    df = df.rename(columns={'date': 'date', 'fin_sentiment': 'can_fin_sentiment',
                            'gen_sentiment': 'can_gen_sentiment'})
    save_to_csv(df, file_name='transformer_sentiment_can.csv')
