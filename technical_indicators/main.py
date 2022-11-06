import pandas as pd
import pathlib
import ta


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


if __name__ == "__main__":
    crnt_dir = pathlib.Path(__file__).parent.resolve()
    er_df = pd.read_csv(crnt_dir/'in'/'exchange_rates_all.csv')
    df = {}
    df['date'] = er_df['Date'].to_list()
    # Measure technical indicators
    df['rsi_14'] = ta.momentum.rsi(er_df['Open']).to_list()
    df['stochrsi_14'] = ta.momentum.StochRSIIndicator(
        er_df['Open']).stochrsi().to_list()
    df['macd_12_26'] = ta.trend.MACD(er_df['Open']).macd().to_list()
    df['adx_14'] = ta.trend.adx(
        high=er_df['High'], low=er_df['Low'], close=er_df['Open']).to_list()
    df['williams_%R'] = ta.momentum.WilliamsRIndicator(
        high=er_df['High'], low=er_df['Low'], close=er_df['Open']).williams_r().to_list()
    df['cci'] = ta.trend.CCIIndicator(
        high=er_df['High'], low=er_df['Low'], close=er_df['Open']).cci().to_list()
    df['atr'] = ta.volatility.AverageTrueRange(
        high=er_df['High'], low=er_df['Low'], close=er_df['Open']).average_true_range().to_list()
    df['utlimate_oscillator'] = ta.momentum.ultimate_oscillator(
        high=er_df['High'], low=er_df['Low'], close=er_df['Open'])
    df['roc'] = ta.momentum.roc(er_df['Open'])
    df = pd.DataFrame(df)
    save_to_csv(df, file_name='ti.csv')
