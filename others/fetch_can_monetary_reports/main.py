from pdfminer.high_level import extract_text
import pathlib
from tqdm import tqdm
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


if __name__ == '__main__':
    crnt_dir = pathlib.Path(__file__).parent.resolve()
    pdfs_dir = crnt_dir/'pdfs'
    dfs = []
    for pth in pdfs_dir.iterdir():
        text = extract_text(pth)
        dfs.append({'date': pth.name.split('.')[0], 'text': text})
    dfs = pd.DataFrame(dfs)
    dfs['date'] = pd.to_datetime(dfs['date'])
    df = dfs.sort_values(by='date')
    save_to_csv(dfs, file_name='can_bank_statements.csv')
