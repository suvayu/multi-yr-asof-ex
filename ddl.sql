-- statements
CREATE TABLE assets AS SELECT * EXCLUDE year FROM read_csv('assets-data-multi-yr.csv', skip=1);

CREATE TABLE model_years AS SELECT DISTINCT name, year FROM read_csv('assets-data-multi-yr.csv', skip=1);

CREATE TABLE assets_lt AS SELECT * FROM read_csv('graph-assets-data-multi-yr.csv', skip=1);
