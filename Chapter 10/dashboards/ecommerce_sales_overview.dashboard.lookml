---
- dashboard: ecommerce_sales_overview
  title: eCommerce Sales Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: A5TeL1UOAybesAG2Z9Srf2
  elements:
  - title: ABC Corp Sales Overview
    name: ABC Corp Sales Overview
    model: sales
    explore: order_items
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [order_items.total_sale_price, order_items.count, order_items.total_gross_margin,
      order_items.returned_count, users.count]
    filters:
      order_items.created_year: 3 years
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: ''
    orientation: auto
    style_order_items.total_sale_price: "#3A4245"
    show_title_order_items.total_sale_price: true
    title_placement_order_items.total_sale_price: above
    value_format_order_items.total_sale_price: ''
    style_order_items.count: "#3A4245"
    show_title_order_items.count: true
    title_placement_order_items.count: above
    value_format_order_items.count: ''
    show_comparison_order_items.count: false
    style_order_items.total_gross_margin: "#3A4245"
    show_title_order_items.total_gross_margin: true
    title_placement_order_items.total_gross_margin: above
    value_format_order_items.total_gross_margin: ''
    show_comparison_order_items.total_gross_margin: false
    style_order_items.returned_count: "#3A4245"
    show_title_order_items.returned_count: true
    title_placement_order_items.returned_count: above
    value_format_order_items.returned_count: ''
    show_comparison_order_items.returned_count: false
    show_comparison_users.count: false
    style_order_items.total_customer_count: "#3A4245"
    show_title_order_items.total_customer_count: true
    title_placement_order_items.total_customer_count: above
    value_format_order_items.total_customer_count: ''
    show_comparison_order_items.total_customer_count: false
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    title_hidden: true
    listen:
      State: users.state
      Country: users.country
      Traffic Source: users.traffic_source
      Created Date: inventory_items.created_date
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Sales and Returns by Month Trend
    name: Sales and Returns by Month Trend
    model: sales
    explore: order_items
    type: looker_line
    fields: [order_items.created_month, order_items.count, order_items.returned_count]
    filters:
      order_items.total_sale_price: ">0"
    sorts: [order_items.created_month desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.count, id: order_items.count,
            name: Order Items}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: order_items.returned_count, id: order_items.returned_count,
            name: Returned Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      order_items.count: column
    series_colors: {}
    series_labels: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      State: users.state
      Country: users.country
      Traffic Source: users.traffic_source
      Created Date: inventory_items.created_date
    row: 4
    col: 0
    width: 12
    height: 8
  - title: Sales by Category (Top 10 Categories)
    name: Sales by Category (Top 10 Categories)
    model: sales
    explore: order_items
    type: looker_pie
    fields: [order_items.total_sale_price, products.category]
    filters:
      order_items.created_year: 3 years
      order_items.total_sale_price: ">0"
    sorts: [order_items.total_sale_price desc 0]
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_labels: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      State: users.state
      Country: users.country
      Traffic Source: users.traffic_source
      Created Date: inventory_items.created_date
    row: 4
    col: 12
    width: 12
    height: 8
  - title: Returns by Brand
    name: Returns by Brand
    model: sales
    explore: order_items
    type: looker_grid
    fields: [products.brand, order_items.count, order_items.returned_count, order_items.total_sale_price,
      order_items.returned_total_sale_price]
    filters:
      order_items.created_year: 3 years
      order_items.total_sale_price: ">0"
      order_items.count: ">=500"
    sorts: [return desc]
    limit: 1000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${order_items.returned_count}/${order_items.count}"
      label: Return %
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: return
      _type_hint: number
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      order_items.returned_count:
        is_active: false
      return:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    show_null_points: true
    interpolation: linear
    hidden_fields:
    hidden_points_if_no: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      State: users.state
      Country: users.country
      Traffic Source: users.traffic_source
      Created Date: inventory_items.created_date
    row: 12
    col: 0
    width: 12
    height: 8
  - title: Top 10 High Gross Margin Products
    name: Top 10 High Gross Margin Products
    model: sales
    explore: order_items
    type: looker_bar
    fields: [order_items.total_gross_margin, products.name]
    filters:
      order_items.created_year: 4 years
      order_items.total_sale_price: ">0"
    sorts: [order_items.total_gross_margin desc 0]
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      State: users.state
      Country: users.country
      Traffic Source: users.traffic_source
      Created Date: inventory_items.created_date
    row: 12
    col: 12
    width: 12
    height: 8
  - title: Orders by Traffic Source
    name: Orders by Traffic Source
    model: sales
    explore: order_items
    type: looker_column
    fields: [order_items.count, users.traffic_source, order_items.created_month_name]
    pivots: [users.traffic_source]
    filters:
      order_items.created_year: 3 years
      order_items.total_sale_price: ">0"
    sorts: [users.traffic_source, order_items.created_month_name]
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    series_labels: {}
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      State: users.state
      Country: users.country
      Traffic Source: users.traffic_source
      Created Date: inventory_items.created_date
    row: 20
    col: 12
    width: 12
    height: 8
  - title: Users by State
    name: Users by State
    model: sales
    explore: order_items
    type: looker_google_map
    fields: [users.count, users.state]
    filters:
      order_items.created_year: 3 years
      order_items.total_sale_price: ">0"
    sorts: [users.count desc 0]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    defaults_version: 0
    hidden_pivots: {}
    color_application: undefined
    listen:
      State: users.state
      Country: users.country
      Traffic Source: users.traffic_source
      Created Date: inventory_items.created_date
    row: 28
    col: 0
    width: 24
    height: 10
  - title: YoY Sales
    name: YoY Sales
    model: sales
    explore: order_items
    type: looker_line
    fields: [order_items.created_month_name, order_items.total_sale_price, order_items.created_year]
    pivots: [order_items.created_year]
    fill_fields: [order_items.created_month_name]
    filters:
      order_items.created_date: before 0 months ago
      order_items.created_year: 4 years
      users.state: ''
      users.city: ''
      users.gender: ''
      users.country: ''
    sorts: [order_items.created_year desc 0, order_items.created_month_name]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{id: '2018', name: '2018', axisId: order_items.total_sale_price},
          {id: '2017', name: '2017', axisId: order_items.total_sale_price}, {id: '2016',
            name: '2016', axisId: order_items.total_sale_price}, {id: '2015', name: '2015',
            axisId: order_items.total_sale_price}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear, valueFormat: "$0,\\\
          K\\"}]
    y_axis_value_format: "$#,##0"
    x_axis_label: Month of Year
    colors: ["#635189", "#B1A8C4", "#1EA8DF", "#8ED3EF"]
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [calculation_1]
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      Traffic Source: users.traffic_source
    row: 20
    col: 0
    width: 12
    height: 8
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: this year to second
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: sales
    explore: order_items
    listens_to_filters: []
    field: inventory_items.created_date
  - name: Country
    title: Country
    type: field_filter
    default_value: USA
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: sales
    explore: order_items
    listens_to_filters: []
    field: users.country
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: sales
    explore: order_items
    listens_to_filters: []
    field: users.state
  - name: Traffic Source
    title: Traffic Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: sales
    explore: order_items
    listens_to_filters: []
    field: users.traffic_source
