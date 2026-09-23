-- ============================================================
-- AndesCommerce Data Platform
-- DEV Unity Catalog structure
-- Architecture: Hub-Spoke + Medallion
-- ============================================================

-- ============================================================
-- HUB
-- ============================================================

CREATE CATALOG IF NOT EXISTS hub_dev
COMMENT 'Development catalog for shared and governed AndesCommerce data';

CREATE SCHEMA IF NOT EXISTS hub_dev.reference
COMMENT 'Corporate reference data shared across AndesCommerce domains';

CREATE SCHEMA IF NOT EXISTS hub_dev.master
COMMENT 'Corporate master data managed centrally for AndesCommerce';

CREATE SCHEMA IF NOT EXISTS hub_dev.shared
COMMENT 'Governed datasets shared across AndesCommerce data domains';


-- ============================================================
-- SALES SPOKE
-- ============================================================

CREATE CATALOG IF NOT EXISTS sales_dev
COMMENT 'Development catalog for the AndesCommerce Sales data domain';

CREATE SCHEMA IF NOT EXISTS sales_dev.bronze
COMMENT 'Raw and minimally transformed data for the Sales domain';

CREATE SCHEMA IF NOT EXISTS sales_dev.silver
COMMENT 'Cleaned, validated and conformed data for the Sales domain';

CREATE SCHEMA IF NOT EXISTS sales_dev.gold
COMMENT 'Business-ready analytical data products for the Sales domain';


-- ============================================================
-- CUSTOMER SPOKE
-- ============================================================

CREATE CATALOG IF NOT EXISTS customer_dev
COMMENT 'Development catalog for the AndesCommerce Customer data domain';

CREATE SCHEMA IF NOT EXISTS customer_dev.bronze
COMMENT 'Raw and minimally transformed data for the Customer domain';

CREATE SCHEMA IF NOT EXISTS customer_dev.silver
COMMENT 'Cleaned, validated and conformed data for the Customer domain';

CREATE SCHEMA IF NOT EXISTS customer_dev.gold
COMMENT 'Business-ready analytical data products for the Customer domain';


-- ============================================================
-- PRODUCT & INVENTORY SPOKE
-- ============================================================

CREATE CATALOG IF NOT EXISTS product_dev
COMMENT 'Development catalog for the AndesCommerce Product and Inventory data domain';

CREATE SCHEMA IF NOT EXISTS product_dev.bronze
COMMENT 'Raw and minimally transformed data for the Product and Inventory domain';

CREATE SCHEMA IF NOT EXISTS product_dev.silver
COMMENT 'Cleaned, validated and conformed data for the Product and Inventory domain';

CREATE SCHEMA IF NOT EXISTS product_dev.gold
COMMENT 'Business-ready analytical data products for the Product and Inventory domain';