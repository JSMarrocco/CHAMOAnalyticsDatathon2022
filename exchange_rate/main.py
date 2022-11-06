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
    out_dir = crnt_dir/'out'
    out_dir.mkdir(parents=True, exist_ok=True)
    df.to_csv(out_dir/file_name, index=False)


if __name__ == "__main__":
    dfs = []
    crnt_dir = pathlib.Path(__file__).parent.resolve()
    for file_path in pathlib.Path(crnt_dir, 'in').iterdir():
        df = pd.read_csv(file_path)
        dfs.append(df.filter(items=['Date', 'Open']))
    df = pd.concat(dfs)
    df = df.drop_duplicates()
    # Sort them by date
    df['Date'] = pd.to_datetime(df['Date'])
    df = df.sort_values(by='Date')
    # Rename Open column name
    df = df.rename(columns={'Date': 'date', 'Open': 'rate'})
    save_to_csv(df, file_name="exchange_rates.csv")
