- dashboard: true_item_assortment
  title: True Item Assortment
  layout: newspaper
  elements:
  - name: Revenue Forecast
    type: text
    title_text: Revenue Forecast
    row: 19
    col: 7
    width: 10
    height: 2
  - title: Actual vs Forecast
    name: Actual vs Forecast
    model: gelsons
    explore: revenue_forecast
    type: looker_line
    fields: [revenue_forecast.FORECAST, revenue_forecast.ACTUAL, revenue_forecast.week]
    sorts: [revenue_forecast.week]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    listen:
      Category Name: revenue_forecast.category_name
      Sub Category Name: revenue_forecast.sub_category_name
      Store ID: revenue_forecast.STORE_ID
      UPC: revenue_forecast.UPC
    row: 26
    col: 3
    width: 19
    height: 5
  - title: Revenue Forecast
    name: Revenue Forecast
    model: gelsons
    explore: revenue_forecast
    type: table
    fields: [revenue_forecast.product_name, revenue_forecast.STORE_ID, revenue_forecast.UPC,
      revenue_forecast.week, revenue_forecast.FORECAST]
    pivots: [revenue_forecast.week]
    sorts: [revenue_forecast.week, revenue_forecast.FORECAST desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    listen:
      Category Name: revenue_forecast.category_name
      Sub Category Name: revenue_forecast.sub_category_name
      Store ID: revenue_forecast.STORE_ID
      UPC: revenue_forecast.UPC
    row: 21
    col: 3
    width: 19
    height: 5
  - title: Substitutable Product by Line Code
    name: Substitutable Product by Line Code
    model: gelsons
    explore: substitutable_product_by_line_code
    type: table
    fields: [substitutable_product_by_line_code.category_name, substitutable_product_by_line_code.sub_category_name,
      substitutable_product_by_line_code.line_code, substitutable_product_by_line_code.upc,
      substitutable_product_by_line_code.product_name, substitutable_product_by_line_code.count]
    sorts: [substitutable_product_by_line_code.product_name, substitutable_product_by_line_code.category_name,
      substitutable_product_by_line_code.sub_category_name, substitutable_product_by_line_code.line_code]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      substitutable_product_by_line_code.count: No of Substitutable Products by Line
        Code
      substitutable_product_by_line_code.avg_price: Avg Price ($)
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Category Name: substitutable_product_by_line_code.category_name
      Sub Category Name: substitutable_product_by_line_code.sub_category_name
      Line Code: substitutable_product_by_line_code.line_code
    row: 13
    col: 3
    width: 19
    height: 6
  - title: Substitutable Product by Upc
    name: Substitutable Product by Upc
    model: gelsons
    explore: substitutable_products_by_upc
    type: looker_grid
    fields: [substitutable_products_by_upc.category_name, substitutable_products_by_upc.sub_category_name,
      substitutable_products_by_upc.upc, substitutable_products_by_upc.count, substitutable_products_by_upc.product_name]
    sorts: [substitutable_products_by_upc.category_name, substitutable_products_by_upc.sub_category_name]
    limit: 500
    query_timezone: America/Los_Angeles
    column_order: [substitutable_products_by_upc.category_name, substitutable_products_by_upc.sub_category_name,
      substitutable_products_by_upc.upc, substitutable_products_by_upc.product_name,
      substitutable_products_by_upc.count]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    series_labels:
      substitutable_products_by_upc.count: No of Substituable Products
    series_column_widths:
      substitutable_products_by_upc.sub_category_name: 147
      substitutable_products_by_upc.category_name: 154
      substitutable_products_by_upc.product_name: 196
      substitutable_products_by_upc.upc: 117
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Category Name: substitutable_products_by_upc.category_name
      Sub Category Name: substitutable_products_by_upc.sub_category_name
      UPC: substitutable_products_by_upc.upc
    row: 7
    col: 3
    width: 19
    height: 6
  - title: Differentiated Product
    name: Differentiated Product
    model: gelsons
    explore: differentiated_product_item_list
    type: table
    fields: [differentiated_product_item_list.category_name, differentiated_product_item_list.sub_category_name,
      differentiated_product_item_list.upc, differentiated_product_item_list.description,
      differentiated_product_item_list.product_size, differentiated_product_item_list.unit_of_measure,
      differentiated_product_item_list.rank]
    filters:
      differentiated_product_item_list.upc: ''
    sorts: [differentiated_product_item_list.product_size desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      differentiated_product_item_list.description: Product Name
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Category Name: differentiated_product_item_list.category_name
      Sub Category Name: differentiated_product_item_list.sub_category_name
      Parameter: differentiated_product_item_list.rank
    row: 0
    col: 3
    width: 9
    height: 7
  - title: Customer Type
    name: Customer Type
    model: gelsons
    explore: customer_cluster_demographics
    type: table
    fields: [customer_cluster_demographics.customer_id, customer_cluster_demographics.customer_type,
      customer_cluster_demographics.cust_name, customer_cluster_demographics.StoreName,
      customer_cluster_demographics.store_id]
    sorts: [customer_cluster_demographics.cust_name desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      customer_cluster_demographics.count: Customer Details
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Customer Type: customer_cluster_demographics.customer_type
    row: 0
    col: 12
    width: 10
    height: 7
  filters:
  - name: Customer Type
    title: Customer Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: gelsons
    explore: customer_cluster_demographics
    listens_to_filters: []
    field: customer_cluster_demographics.customer_type
  - name: Category Name
    title: Category Name
    type: field_filter
    default_value: Store Operating Supplies
    allow_multiple_values: true
    required: false
    model: gelsons
    explore: substitutable_products_by_upc
    listens_to_filters: [Line Code, Sub Category Name, UPC]
    field: substitutable_products_by_upc.category_name
  - name: Sub Category Name
    title: Sub Category Name
    type: field_filter
    default_value: Bag Sales
    allow_multiple_values: true
    required: false
    model: gelsons
    explore: substitutable_products_by_upc
    listens_to_filters: [Category Name, Line Code, UPC]
    field: substitutable_products_by_upc.sub_category_name
  - name: Parameter
    title: Parameter
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: gelsons
    explore: differentiated_product_item_list
    listens_to_filters: []
    field: differentiated_product_item_list.rank
  - name: Store ID
    title: Store ID
    type: field_filter
    default_value: '4'
    allow_multiple_values: true
    required: false
    model: gelsons
    explore: revenue_forecast
    listens_to_filters: []
    field: revenue_forecast.STORE_ID
  - name: UPC
    title: UPC
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: gelsons
    explore: substitutable_products_by_upc
    listens_to_filters: [Category Name, Sub Category Name]
    field: substitutable_products_by_upc.upc
  - name: Line Code
    title: Line Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: gelsons
    explore: substitutable_product_by_line_code
    listens_to_filters: []
    field: substitutable_product_by_line_code.line_code
