from .MasterDictionary import load_masterdictionary


def get_fin_sentiment_dic():
    sentiment_dic, _, _, _, _, _ = load_masterdictionary(True, None, True)

    new_dic = {}
    for k, val in sentiment_dic.items():
        new_dic[k.lower()] = val
    return new_dic
