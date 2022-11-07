import pathlib
import pandas as pd
from pathlib import Path

# TODO: There is one file that needed the str(x) in lambda function below. Check if it fucks something


def get_FOMC_dataset(file_name) -> pd.DataFrame:
    """
    Reads one of FOMC datasets.
    Input:
        file_name:
    Output:
        df
    """
    dir = pathlib.Path(__file__).parent.resolve()
    df = pd.read_csv(dir/'datasets'/'FOMC'/file_name)
    # Cleans up text from noise
    df['text'] = df['contents'].apply(lambda x: str(x).replace(
        '\n\n[SECTION]\n\n', '').replace('\n', ' ').replace('\r', ' ').strip())
    return df


def get_CAN_dataset(file_name) -> pd.DataFrame:
    dir = pathlib.Path(__file__).parent.resolve()
    df = pd.read_csv(dir/'datasets'/'CAN'/file_name)
    return df


def load_FOMC_datasets() -> list[pd.DataFrame]:
    """
    Loads all text datasets
    Outputs:
        dfs: a list of all datasets
    """
    dfs = []
    file_names = ['minutes.csv', 'presconf_script.csv',
                  'speech.csv', 'statement.csv', 'testimony.csv']
    for file_name in file_names:
        dfs.append(get_FOMC_dataset(file_name))
    return dfs


def load_CAN_datasets() -> list[pd.DataFrame]:
    dfs = []
    file_names = ['can_bank_statements.csv']
    for file_name in file_names:
        dfs.append(get_CAN_dataset(file_name))
    return dfs


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
