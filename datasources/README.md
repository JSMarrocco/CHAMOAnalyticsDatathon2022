# Datasources


# Datasources directories
This directory holds data coming from all datasources.

- `exchange_rate`: the USDCAD exchange rate (label)
- `sentiment_fin_dic`: sentiment analysis of FOMC using the Loughran-McDonald_MasterDictionary
- `sentiment_transformers`: sentiment analysis of FOMC using transformers 
- `technical_indicators`: technical indicators measured on `exchange_rate`
- `indexes`: indexes given by PolyFinances


# Master dataset datasheet
- `date`: self-explanatory
- `rate`: the USDCAD exchange rate (label) 
- prefix `sent_fin_us_`: The sentiment analysis done by finance dictionnary on US documents.
- prefix `sent_bert_us_`: The sentiment analysis done by BERT on US documents.
- prefix `ti_rate`: The technical indicators of USDCAD rate
- prefix `interest_rate_can`: The interest rate for CAN
- prefix `interest_rate_us`: The interest rate for US
- prefix `index`: Some indexes given by PF ...