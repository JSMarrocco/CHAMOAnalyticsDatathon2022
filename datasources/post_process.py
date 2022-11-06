import pandas as pd
import pathlib


def rename_columns(df: pd.DataFrame):
    sent_fin_us_ = 'sent_fin_us_'
    sent_bert_us_ = 'sent_bert_us_'
    ti_rate = 'ti_rate_'
    interest_rate_can = 'interest_rate_can'
    interest_rate_us = 'interest_rate_us'
    index = 'index_'

    return df.rename(columns={
        'rate': 'rate',
        'uncertainty': f'{sent_fin_us_}uncertainty',
        'litigious': f'{sent_fin_us_}litigious',
        'strong_modal': f'{sent_fin_us_}strong_modal',
        'weak_modal': f'{sent_fin_us_}weak_modal',
        'constraining': f'{sent_fin_us_}constraining',
        'optimistic': f'{sent_fin_us_}optimistic',
        'rsi_14': f'{ti_rate}rsi_14',
        'stochrsi_14': f'{ti_rate}stochrsi_14',
        'macd_12_26': f'{ti_rate}macd_12_26',
        'adx_14': f'{ti_rate}adx_14',
        'williams_%R': f'{ti_rate}williams_%R',
        'cci': f'{ti_rate}cci',
        'atr': f'{ti_rate}atr',
        'utlimate_oscillator': f'{ti_rate}utlimate_oscillator',
        'roc': f'{ti_rate}roc',
        'bank_rate': f'{interest_rate_can}',
        'W.BCPI': f'{index}W.BCPI',
        'W.BCNE': f'{index}W.BCNE',
        'W.ENER': f'{index}W.ENER',
        'W.MTLS': f'{index}W.MTLS',
        'W.FOPR': f'{index}W.FOPR',
        'W.AGRI': f'{index}W.AGRI',
        'W.FISH': f'{index}W.FISH',
        'WGTS.AGRI': f'{index}WGTS.AGRI',
        'WGTS.BRENT': f'{index}WGTS.BRENT',
        'WGTS.COAL': f'{index}WGTS.COAL',
        'WGTS.FISH': f'{index}WGTS.FISH',
        'WGTS.FOPR': f'{index}WGTS.FOPR',
        'WGTS.MTLS': f'{index}WGTS.MTLS',
        'WGTS.NATURALGAS': f'{index}WGTS.NATURALGAS',
        'WGTS.WCC': f'{index}WGTS.WCC',
        'WGTS.WTI': f'{index}WGTS.WTI',
        'us_bank_rate': interest_rate_us,
        'fin_sentiment': f'{sent_bert_us_}fin',
        'gen_sentiment': f'{sent_bert_us_}gen'
    })


if __name__ == '__main__':
    crnt_dir = pathlib.Path(__file__).parent.resolve()
    df = pd.read_csv(crnt_dir/'master_dataset.csv')
    df = rename_columns(df)
    1
