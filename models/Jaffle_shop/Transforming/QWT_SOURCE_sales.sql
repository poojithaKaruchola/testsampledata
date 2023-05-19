trf_qwt_customers:
{{ config (materialized = 'table', database = 'QWT_ANALYTICS', schema = 'STAGING') }}
select * from
QWT_SOURCE.Sales.Customers

