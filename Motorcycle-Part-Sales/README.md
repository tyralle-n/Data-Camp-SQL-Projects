/*# Analyzing Motorcycle Part Sales

This project explores motorcycle part sales across multiple warehouses using SQL.

## Key Questions
- What is the net revenue by product line?
- How does revenue vary across months (June–August)?
- Which warehouses generate the most revenue?

## Skills Demonstrated
- Aggregation (SUM, GROUP BY)
- Date formatting (TO_CHAR)
- Filtering (WHERE client_type = 'Wholesale')
- Sorting and ordering results

## Final Query
See `revenue_by_product_line.sql` for the full SQL solution.
*/

SELECT public.sales.product_line, TO_CHAR(date, 'Month') AS month,
	public.sales.warehouse, SUM(total) - SUM(payment_fee) AS net_revenue
FROM public.sales
	WHERE client_type = 'Wholesale'

	GROUP BY 
    product_line,
    month,
    warehouse
	ORDER BY 
    product_line,
    month,
    net_revenue DESC;
