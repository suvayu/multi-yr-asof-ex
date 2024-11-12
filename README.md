# How to run

Start `duckdb` CLI

```sql
D .read ddl.sql
D .read mwe.sql
┌─────────┬─────────┬─────────────────┬────────────┬────────────────────┬───┬───────────────┬────────────────────┬───────────────────┬───────┬──────────────────┐
│  name   │ active  │ commission_year │ investable │ investment_integer │ … │ initial_units │ technical_lifetime │ economic_lifetime │ year  │ decomission_year │
│ varchar │ boolean │      int64      │  boolean   │      boolean       │   │    double     │       int64        │       int64       │ int64 │      int64       │
├─────────┼─────────┼─────────────────┼────────────┼────────────────────┼───┼───────────────┼────────────────────┼───────────────────┼───────┼──────────────────┤
│ demand  │ true    │            2030 │ false      │ false              │ … │           0.0 │                 15 │                10 │  2030 │             2045 │
│ ens     │ true    │            2030 │ false      │ false              │ … │           1.0 │                 15 │                10 │  2030 │             2045 │
│ ocgt    │ true    │            2030 │ true       │ true               │ … │           0.0 │                 15 │                10 │  2030 │             2045 │
│ solar   │ true    │            2030 │ true       │ true               │ … │           0.0 │                 15 │                10 │  2030 │             2045 │
│ wind    │ true    │            2020 │ false      │ false              │ … │          0.07 │                 30 │                10 │  2050 │             2050 │
│ battery │ true    │            2020 │ false      │ false              │ … │          0.07 │                 30 │                10 │  2050 │             2050 │
│ ccgt    │ true    │            2028 │ false      │ false              │ … │           1.0 │                 25 │                10 │  2050 │             2053 │
│ ccgt    │ true    │            2028 │ false      │ false              │ … │           1.0 │                 25 │                10 │  2050 │             2053 │
│ ccgt    │ true    │            2030 │ true       │ true               │ … │           0.0 │                 25 │                10 │  2050 │             2055 │
│ wind    │ true    │            2030 │ true       │ true               │ … │          0.02 │                 30 │                10 │  2050 │             2060 │
│ battery │ true    │            2030 │ true       │ true               │ … │          0.02 │                 30 │                10 │  2050 │             2060 │
│ battery │ true    │            2030 │ false      │ false              │ … │          0.02 │                 30 │                10 │  2050 │             2060 │
│ wind    │ true    │            2030 │ false      │ false              │ … │          0.02 │                 30 │                10 │  2050 │             2060 │
│ demand  │ false   │            2050 │ false      │ false              │ … │           0.0 │                 15 │                10 │  2050 │             2065 │
│ ens     │ true    │            2050 │ false      │ false              │ … │           1.0 │                 15 │                10 │  2050 │             2065 │
│ ocgt    │ true    │            2050 │ true       │ true               │ … │           0.0 │                 15 │                10 │  2050 │             2065 │
│ solar   │ true    │            2050 │ true       │ true               │ … │           0.0 │                 15 │                10 │  2050 │             2065 │
│ ccgt    │ true    │            2050 │ false      │ false              │ … │           0.0 │                 25 │                10 │  2050 │             2075 │
│ wind    │ true    │            2050 │ true       │ true               │ … │           0.0 │                 30 │                10 │  2050 │             2080 │
│ battery │ true    │            2050 │ true       │ true               │ … │           0.0 │                 30 │                10 │  2050 │             2080 │
├─────────┴─────────┴─────────────────┴────────────┴────────────────────┴───┴───────────────┴────────────────────┴───────────────────┴───────┴──────────────────┤
│ 20 rows                                                                                                                                 11 columns (10 shown) │
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
```
