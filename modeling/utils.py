import pandas as pd
import datetime
import numpy as np
from sklearn.preprocessing import MinMaxScaler

cached_master_dataset = None


def load_and_clean_master_dataset():
    global cached_master_dataset
    if cached_master_dataset is None:
        df_master = pd.read_csv("../datasources/master_dataset.csv")

        # Create labels
        df_master['y_exp'] = np.full(df_master.shape[0], -1)
        for i, row in df_master.iterrows():
            try:
                two_weeks_from_current_date = datetime.datetime.strptime(
                    row.date, "%Y-%m-%d") + datetime.timedelta(weeks=2)

                futur_rate = list(df_master.loc[df_master['date'] == str(
                    two_weeks_from_current_date.date())].rate)[0]
                df_master.loc[i, 'y_exp'] = futur_rate
            except:
                break

        # Remove any row that do not have a lael in the future
        df_master = df_master.loc[df_master.y_exp >= 0]

        df_master = df_master.dropna()
        df_master = df_master.reset_index(drop=True)

        df_master = df_master.replace('.', np.nan)
        df_master[[" us_bank_rate"]] = df_master[[
            " us_bank_rate"]].apply(pd.to_numeric)
        df_master = df_master.rename(columns={' us_bank_rate': 'us_bank_rate'})
        df_master = df_master.dropna()
        cached_master_dataset = df_master
    return cached_master_dataset.copy()


def split_train_test_val(df):
    # Split train val test datasets
    test_cutting_date = '2022-05-01'
    val_cutting_date = '2022-02-01'
    df_train = df[df['date'] < val_cutting_date]
    df_val = df[(df['date'] >= val_cutting_date) &
                (df['date'] < test_cutting_date)]
    df_test = df[df['date'] >= test_cutting_date]
    return df_train, df_val, df_test


def split_Xy(df):
    return df.drop(columns=['y_exp']), df['y_exp']


def normalize(df, train=False, scaler=None):
    if train:
        scaler = MinMaxScaler()
    cols_to_normalize = ['sent_fin_us_uncertainty', 'sent_fin_us_litigious', 'sent_fin_us_strong_modal', 'sent_fin_us_weak_modal', 'sent_fin_us_constraining', 'sent_fin_us_optimistic', 'sent_fin_can_uncertainty', 'sent_fin_can_litigious', 'sent_fin_can_strong_modal', 'sent_fin_can_weak_modal', 'sent_fin_can_constraining',
                         'sent_fin_can_optimistic', 'index_W.BCPI', 'index_W.BCNE', 'index_W.ENER', 'index_W.MTLS', 'index_W.FOPR', 'index_W.AGRI', 'index_W.FISH', 'index_WGTS.AGRI', 'index_WGTS.BRENT', 'index_WGTS.COAL', 'index_WGTS.FISH', 'index_WGTS.FOPR', 'index_WGTS.MTLS', 'index_WGTS.NATURALGAS', 'index_WGTS.WCC', 'index_WGTS.WTI']
    if train:
        scaler = scaler.fit(df[cols_to_normalize])
    df[cols_to_normalize] = scaler.transform(df[cols_to_normalize])
    return df, scaler


def to_batch(df, y):
    # Put data in batches
    sliding_window_size = 20

    data = []
    for i in range(sliding_window_size, len(df)):
        sample = df.iloc[i-sliding_window_size:i]
        if 'date' in sample:
            sample = sample.drop(columns=['date'])  # date is not relevant
        data.append(sample.values)
    data = np.array(data)
    return data, y[sliding_window_size:]


cols = ['interest_rate_can',
        'index_WGTS.BRENT',
        'rate',
        'ti_rate_rsi_14',
        'sent_fin_can_litigious',
        'ti_rate_stochrsi_14',
        'sent_fin_us_strong_modal',
        'ti_rate_williams_%R',
        'index_WGTS.COAL',
        'ti_rate_macd_12_26',
        'sent_fin_us_uncertainty',
        'sent_fin_can_uncertainty',
        'index_W.FISH',
        'ti_rate_atr',
        'sent_fin_us_weak_modal',
        'sent_bert_can_fin_sentiment',
        'index_WGTS.WCC',
        'index_W.ENER',
        'sent_bert_us_gen',
        'sent_bert_can_gen_sentiment',
        'sent_fin_us_litigious',
        'sent_bert_us_fin',
        'index_W.FOPR',
        'ti_rate_utlimate_oscillator',
        'index_WGTS.FOPR',
        'sent_fin_can_strong_modal',
        'ti_rate_adx_14',
        'ti_rate_roc',
        'ti_rate_cci',
        'sent_fin_can_weak_modal',
        'sent_fin_can_optimistic',
        'sent_fin_us_optimistic',
        'index_WGTS.NATURALGAS',
        'sent_fin_can_constraining',
        'us_bank_rate',
        'index_WGTS.MTLS',
        'index_WGTS.AGRI',
        'index_W.MTLS',
        'index_W.BCNE',
        'index_WGTS.WTI',
        'index_WGTS.FISH',
        'sent_fin_us_constraining',
        'index_W.AGRI',
        'index_W.BCPI']
