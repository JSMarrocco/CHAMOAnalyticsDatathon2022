import pathlib
import pandas as pd
from nltk.tokenize import word_tokenize
from collections import Counter, defaultdict
from dictionnary import get_fin_sentiment_dic

sentiment_dic = get_fin_sentiment_dic()
SENTIMENTS = ['negative', 'positive', 'uncertainty',
              'litigious', 'strong_modal', 'weak_modal', 'constraining']


def get_text_finance_sentiment(text: str) -> dict:
    """
    Gets the sentiment of a text, using the finance
    dictionnary sentiment.
    Input:
        text: the text to analyze
    Output:
        ans: A dictionnary where keys are a sentiment and 
            values are the number of time it has been encountered.
    """
    text = text.lower()
    tokens = word_tokenize(text)
    cnt_tokens = Counter(tokens)
    # Find the words in dictionnary and in text
    intersect = set.intersection(
        set(cnt_tokens.keys()), set(sentiment_dic.keys()))
    ans = defaultdict(int)
    # For each of these
    for word in intersect:
        for sentiment in SENTIMENTS:
            if getattr(sentiment_dic[word], sentiment):
                ans[sentiment] += 1
    return ans


def postprocess_sentiment(text_sentiment: defaultdict):
    """
    Post processes a sentiment analysis.
    Notably, it creates "optimistic" attribute by 
    substracting negative to positive sentiments.
    Input:
        text_sentiment: the sentiment of a text
    Output:
        text_sentiment: the postprocessed sentiment of a text
    """
    ans = {}
    # Puts back every value from text_sentiment in ans
    for s in SENTIMENTS:
        if s not in ['positive', 'negative']:
            ans[s] = text_sentiment[s]
    # Measures "optimistic" attribute
    ans['optimistic'] = text_sentiment['positive'] - text_sentiment['negative']
    return ans


def measure_finance_sentiment(df):
    sentiments = []
    # Iterate over each text and analyze its sentiment
    for i, row in df.iterrows():
        text_sentiment = get_text_finance_sentiment(row['text'])
        text_sentiment = postprocess_sentiment(text_sentiment)
        # Merge sentiments scores to other row attributes
        row = {**row.to_dict(), **text_sentiment}
        sentiments.append(row)
    df = pd.DataFrame(sentiments)
    return df


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
    df['text'] = df['contents'].apply(lambda x: x.replace(
        '\n\n[SECTION]\n\n', '').replace('\n', ' ').replace('\r', ' ').strip())
    return df


if __name__ == "__main__":
    df = get_FOMC_dataset('statement.csv')
    df = measure_finance_sentiment(df)
