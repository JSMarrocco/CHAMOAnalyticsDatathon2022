import pandas as pd
import datetime
import pathlib
from utils import save_to_csv
from copy import deepcopy


def get_date(df, i):
    return datetime.date(*[int(d) for d in df.iloc[i]['date'].strftime('%Y-%m-%d').split('-')])


def post_process(df=None, file_name='finance_sentiment_pp.csv'):
    if df is None:
        crnt_dir = pathlib.Path(__file__).parent.resolve()
        df = pd.read_csv(crnt_dir/'out'/'finance_sentiment.csv')

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
                r = entries.sum()
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

    df = pd.DataFrame(df_t)
    save_to_csv(df, file_name=file_name)


if __name__ == '__main__':
    post_process()
