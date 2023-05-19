trf_qwt_orders:
{{ config (materialized = 'table', database = 'QWT_ANALYTICS', schema = 'TRANSFORMING') }}
select md5(custid || company || contact) as hash_custid,
custid, company, contact, city, country, divid, address, fax, phone, postalcode from
"QWT_ANALYTICS"."STAGING"."STG_QWT_CUSTOMERS"

