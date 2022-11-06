# Datasources


# Datasources directories
This directory holds data coming from all datasources.

- `exchange_rate`: the USDCAD exchange rate (label)
- `sentiment_fin_dic`: sentiment analysis of FOMC using the Loughran-McDonald_MasterDictionary
- `sentiment_transformers`: sentiment analysis of FOMC using transformers 
- `technical_indicators`: technical indicators measured on `exchange_rate`


# Master dataset datasheet
- `date`: self-explanatory
- `rate`: the USDCAD exchange rate (label) 
- `uncertainty`,`litigious`,`strong_modal`,`weak_modal`,`constraining`,`optimistic`: sentiment analysis of FOMC using the Loughran-McDonald_MasterDictionary
-  `rsi_14`,`stochrsi_14`,`macd_12_26`,`adx_14`,`williams_%R`,`cci`,`atr`,`utlimate_oscillator`,`roc`: technical indicators (TI) measured on `exchange_rate`. See [link](https://github.com/bukosabino/ta) or [link](https://ca.investing.com/currencies/usd-cad-technical) for a description of these TIs. The numbers are simply the parameters used by the technical indicator (e.g. `rsi_14` uses a sliding window of 14 days)