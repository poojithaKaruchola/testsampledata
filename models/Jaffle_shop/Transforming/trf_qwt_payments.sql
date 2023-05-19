trf_qwt_payments:
{{ config (materialized = 'table', database = 'QWT_ANALYTICS', schema = 'TRANSFORMING') }}
select O.Orderid, O.orderdate, o.customerid, o.freight,
od.lineno, od.productid, od.quantity, od.unitprice, od.discount, to_decimal((od.UnitPrice * od.Quantity) * (1-OD.Discount)) as LineSalesAmt
from QWT_ANALYTICS.STAGING.STG_QWT_ORDERS O inner join QWT_ANALYTICS.STAGING.STG_QWT_ORDERDETAILS OD on O.OrderID = OD.Orderid

