- dashboard: cluster_lookup
  title: "(4) Cluster Overview"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Campaign Breakouts
    name: Campaign Breakouts
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_grid
    fields: [impression_funnel_dv360.total_impressions, impression_funnel_dv360.dbm_revenue,
      impression_funnel_dv360.dynamic_measure, impression_funnel_dv360.campaign_id]
    filters:
      impression_funnel_dv360.dbm_revenue: ">0"
    sorts: [impression_funnel_dv360.dbm_revenue desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      impression_funnel_dv360.dbm_revenue:
        is_active: true
      impression_funnel_dv360.count_impressions:
        is_active: true
      impression_funnel_dv360.total_impressions:
        is_active: true
    series_text_format:
      impression_funnel_dv360.dbm_line_item_id:
        bold: true
        fg_color: "#4285F4"
        align: center
        italic: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: [impression_funnel_dv360.dynamic_measure]}]
    series_value_format:
      impression_funnel_dv360.dbm_line_item_id:
        name: id
        format_string: '0'
        label: ID
    defaults_version: 1
    series_types: {}
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 22
    col: 12
    width: 12
    height: 6
  - title: Performance by Sites (Top 10)
    name: Performance by Sites (Top 10)
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_bar
    fields: [impression_funnel_dv360.dbm_site_id, impression_funnel_dv360.dynamic_measure_label]
    sorts: [impression_funnel_dv360.dynamic_measure_label desc]
    limit: 10
    column_limit: 50
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: impression_funnel_dv360.dynamic_measure_label,
            id: impression_funnel_dv360.dynamic_measure_label, name: Dynamic Measure
              Label}], showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      impression_funnel_dv360.dynamic_measure_label: "#FBBC04"
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 35
    col: 12
    width: 12
    height: 7
  - title: Performance by DMA
    name: Performance by DMA
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_geo_choropleth
    fields: [impression_funnel_dv360.dynamic_measure_label, impression_funnel_dv360.dbm_designated_market_area_dma_id]
    filters:
      impression_funnel_dv360.dbm_designated_market_area_dma_id: "-NULL"
    sorts: [impression_funnel_dv360.dynamic_measure_label desc]
    limit: 500
    column_limit: 50
    map: auto
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 37.99616267972814
    map_longitude: -95.84472656250001
    map_zoom: 4
    series_types: {}
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 28
    col: 12
    width: 12
    height: 7
  - title: Performance by Device Type
    name: Performance by Device Type
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_column
    fields: [impression_funnel_dv360.dynamic_measure_label, impression_funnel_dv360.DBM_Device_Type_Name]
    filters: {}
    sorts: [impression_funnel_dv360.dynamic_measure_label desc]
    limit: 500
    column_limit: 50
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
    y_axes: [{label: '', orientation: left, series: [{axisId: impression_funnel_dv360.dynamic_measure_label,
            id: impression_funnel_dv360.dynamic_measure_label, name: CPA}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    series_types: {}
    map: usa
    map_projection: ''
    quantize_colors: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 42
    col: 12
    width: 12
    height: 6
  - title: Conversions by DOW & TOD
    name: Conversions by DOW & TOD
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_grid
    fields: [impression_funnel_dv360.impression_hour_of_day, impression_funnel_dv360.impression_day_of_week,
      impression_funnel_dv360.total_conversions]
    pivots: [impression_funnel_dv360.impression_day_of_week]
    fill_fields: [impression_funnel_dv360.impression_hour_of_day, impression_funnel_dv360.impression_day_of_week]
    filters: {}
    sorts: [impression_funnel_dv360.impression_day_of_week 0, impression_funnel_dv360.impression_hour_of_day]
    limit: 500
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
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      impression_funnel_dv360.dynamic_measure_label:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: [impression_funnel_dv360.total_conversions]}]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 48
    col: 9
    width: 15
    height: 9
  - title: Performance by Browser
    name: Performance by Browser
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_column
    fields: [impression_funnel_dv360.dynamic_measure, impression_funnel_dv360.dbm_browser_platform_id]
    sorts: [impression_funnel_dv360.dynamic_measure desc]
    limit: 500
    column_limit: 50
    row_total: right
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
    y_axes: [{label: '', orientation: left, series: [{axisId: impression_funnel_dv360.dynamic_measure,
            id: impression_funnel_dv360.dynamic_measure, name: Dynamic Measure}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: [Row Total - impression_funnel_dv360.dynamic_measure]
    hide_legend: false
    series_types: {}
    series_colors:
      impression_funnel_dv360.dynamic_measure: "#FBBC04"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 42
    col: 0
    width: 12
    height: 6
  - title: Performance & Spend Trend
    name: Performance & Spend Trend
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_line
    fields: [impression_funnel_dv360.impression_date, impression_funnel_dv360.dynamic_measure,
      impression_funnel_dv360.dbm_revenue]
    fill_fields: [impression_funnel_dv360.impression_date]
    filters: {}
    sorts: [impression_funnel_dv360.impression_date desc]
    limit: 500
    column_limit: 50
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
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: impression_funnel_dv360.dbm_revenue,
            id: impression_funnel_dv360.dbm_revenue, name: Spend}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: right, series: [{axisId: impression_funnel_dv360.dynamic_measure,
            id: impression_funnel_dv360.dynamic_measure, name: Dynamic Measure}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    series_types: {}
    series_colors:
      impression_funnel_dv360.dynamic_measure: "#FBBC04"
      impression_funnel_dv360.dbm_revenue: "#34A853"
    series_labels:
      impression_funnel_dv360.dbm_revenue: Spend
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 22
    col: 0
    width: 12
    height: 6
  - title: Total Impressions
    name: Total Impressions
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.total_impressions, impression_funnel_dv360.previous_period]
    filters: {}
    sorts: [impression_funnel_dv360.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_previous_period, label: vs. Previous Period,
        expression: "(${impression_funnel_dv360.total_impressions}-offset(${impression_funnel_dv360.total_impressions},1))/offset(${impression_funnel_dv360.total_impressions},1)",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.previous_period_filter
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 18
    col: 0
    width: 8
    height: 4
  - title: Performance by Auction Type
    name: Performance by Auction Type
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_column
    fields: [impression_funnel_dv360.dynamic_measure_label, impression_funnel_dv360.is_public]
    filters:
      impression_funnel_dv360.is_public: "-NULL"
    sorts: [impression_funnel_dv360.dynamic_measure_label desc]
    limit: 500
    column_limit: 50
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
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: impression_funnel_dv360.dynamic_measure_label,
            id: impression_funnel_dv360.dynamic_measure_label, name: Dynamic Measure
              Label}], showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    font_size: '12'
    series_types: {}
    series_colors:
      'Yes': "#FBBC04"
    series_labels:
      'No': Private
      'Yes': Public
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_null_points: true
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 35
    col: 0
    width: 12
    height: 7
  - title: Performance by Targeted Segments
    name: Performance by Targeted Segments
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_grid
    fields: [impression_funnel_dv360.dynamic_measure, dbm_matching_targeted_segments_array.dbm_matching_targeted_segments]
    sorts: [impression_funnel_dv360.dynamic_measure desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_average, label: vs. Average, expression: "(${impression_funnel_dv360.dynamic_measure}-mean(${impression_funnel_dv360.dynamic_measure}))/mean(${impression_funnel_dv360.dynamic_measure})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      impression_funnel_dv360.dynamic_measure:
        is_active: false
      vs_average:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
    series_text_format:
      impression_funnel_dv360.dbm_creative_id:
        bold: true
        italic: true
        fg_color: "#4285F4"
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [impression_funnel_dv360.dynamic_measure]}]
    series_types: {}
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
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 48
    col: 0
    width: 9
    height: 9
  - title: Performance by Operating System
    name: Performance by Operating System
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_column
    fields: [impression_funnel_dv360.dbm_operating_system_id, impression_funnel_dv360.dynamic_measure]
    filters:
      impression_funnel_dv360.dynamic_measure: NOT NULL
    sorts: [impression_funnel_dv360.dynamic_measure desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: impression_funnel_dv360.dynamic_measure,
            id: impression_funnel_dv360.dynamic_measure, name: Dynamic Measure}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 28
    col: 0
    width: 12
    height: 7
  - title: Total Spend
    name: Total Spend
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: single_value
    fields: [impression_funnel_dv360.previous_period, impression_funnel_dv360.dbm_revenue]
    filters: {}
    sorts: [impression_funnel_dv360.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_previous_period, label: vs. Previous Period,
        expression: "(${impression_funnel_dv360.dbm_revenue}-offset(${impression_funnel_dv360.dbm_revenue},1))/offset(${impression_funnel_dv360.dbm_revenue},1)",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Impression Date: impression_funnel_dv360.previous_period_filter
      Centroid ID: cluster_predict.centroid_id
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 18
    col: 8
    width: 8
    height: 4
  - title: Average Centroid Distance
    name: Average Centroid Distance
    model: campaign_manager_dv360_marketplace
    explore: cluster_predict
    type: single_value
    fields: [cluster_predict.average_centroid_distance]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Centroid ID: cluster_predict.centroid_id
    row: 18
    col: 16
    width: 8
    height: 4
  - name: Cluster Overview
    type: text
    title_text: Cluster Overview
    subtitle_text: ''
    body_text: "<center>Comparison between this cluster and other clusters in the\
      \ specified date range</center>"
    row: 0
    col: 0
    width: 24
    height: 3
  - name: Cluster Performance
    type: text
    title_text: Cluster Performance
    subtitle_text: ''
    body_text: "<center>Use the Centroid ID filter to focus on a particular cluster</center>"
    row: 15
    col: 0
    width: 24
    height: 3
  - title: CPC Comparison
    name: CPC Comparison
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_bar
    fields: [cluster_predict.centroid_id, impression_funnel_dv360.cpc, cluster_predict.is_selected_centroid]
    filters:
      cluster_predict.centroid_id: NOT NULL
    sorts: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid]
    limit: 500
    dynamic_fields: [{table_calculation: 'yes', label: 'Yes', expression: 'if(${cluster_predict.is_selected_centroid},${impression_funnel_dv360.cpc},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: 'no', label: 'No', expression: 'if(NOT ${cluster_predict.is_selected_centroid},${impression_funnel_dv360.cpc},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: No - impression_funnel_dv360.cpc,
            id: No - impression_funnel_dv360.cpc, name: 'No'}, {axisId: Yes - impression_funnel_dv360.cpc,
            id: Yes - impression_funnel_dv360.cpc, name: 'Yes'}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      Yes - impression_funnel_dv360.cpc: "#34A853"
      'yes': "#34A853"
      'no': "#4285F4"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [cluster_predict.is_selected_centroid, impression_funnel_dv360.cpc]
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_input
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 3
    col: 0
    width: 8
    height: 6
  - title: CPA Comparison
    name: CPA Comparison
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_bar
    fields: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid, impression_funnel_dv360.cpa]
    filters:
      cluster_predict.centroid_id: NOT NULL
    sorts: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid]
    limit: 500
    dynamic_fields: [{table_calculation: 'yes', label: 'Yes', expression: 'if(${cluster_predict.is_selected_centroid},${impression_funnel_dv360.cpa},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: 'no', label: 'No', expression: 'if(NOT ${cluster_predict.is_selected_centroid},${impression_funnel_dv360.cpa},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: No - impression_funnel_dv360.cpc,
            id: No - impression_funnel_dv360.cpc, name: 'No'}, {axisId: Yes - impression_funnel_dv360.cpc,
            id: Yes - impression_funnel_dv360.cpc, name: 'Yes'}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      Yes - impression_funnel_dv360.cpc: "#34A853"
      Yes - impression_funnel_dv360.cpa: "#34A853"
      'yes': "#34A853"
      'no': "#4285F4"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [impression_funnel_dv360.cpa, cluster_predict.is_selected_centroid]
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_input
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 3
    col: 8
    width: 8
    height: 6
  - title: Total Spend Comparison
    name: Total Spend Comparison
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_bar
    fields: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid, impression_funnel_dv360.dbm_revenue]
    filters:
      cluster_predict.centroid_id: NOT NULL
    sorts: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid]
    limit: 500
    dynamic_fields: [{table_calculation: 'yes', label: 'Yes', expression: 'if(${cluster_predict.is_selected_centroid},${impression_funnel_dv360.dbm_revenue},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: 'no', label: 'No', expression: 'if(NOT ${cluster_predict.is_selected_centroid},${impression_funnel_dv360.dbm_revenue},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: No - impression_funnel_dv360.cpc,
            id: No - impression_funnel_dv360.cpc, name: 'No'}, {axisId: Yes - impression_funnel_dv360.cpc,
            id: Yes - impression_funnel_dv360.cpc, name: 'Yes'}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      Yes - impression_funnel_dv360.cpc: "#34A853"
      Yes - impression_funnel_dv360.dbm_revenue: "#34A853"
      'yes': "#34A853"
      'no': "#4285F4"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [cluster_predict.is_selected_centroid, impression_funnel_dv360.dbm_revenue]
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_input
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 9
    col: 0
    width: 8
    height: 6
  - title: Total Impressions Comparison
    name: Total Impressions Comparison
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_bar
    fields: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid, impression_funnel_dv360.total_impressions]
    filters:
      cluster_predict.centroid_id: NOT NULL
    sorts: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid]
    limit: 500
    dynamic_fields: [{table_calculation: 'yes', label: 'Yes', expression: 'if(${cluster_predict.is_selected_centroid},${impression_funnel_dv360.total_impressions},null)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: 'no', label: 'No', expression: 'if(NOT
          ${cluster_predict.is_selected_centroid},${impression_funnel_dv360.total_impressions},null)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: No - impression_funnel_dv360.cpc,
            id: No - impression_funnel_dv360.cpc, name: 'No'}, {axisId: Yes - impression_funnel_dv360.cpc,
            id: Yes - impression_funnel_dv360.cpc, name: 'Yes'}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      Yes - impression_funnel_dv360.cpc: "#34A853"
      Yes - impression_funnel_dv360.dbm_revenue: "#34A853"
      No - impression_funnel_dv360.total_impressions: "#4285F4"
      Yes - impression_funnel_dv360.total_impressions: "#34A853"
      'yes': "#34A853"
      'no': "#4285F4"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [cluster_predict.is_selected_centroid, impression_funnel_dv360.total_impressions]
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_input
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 9
    col: 8
    width: 8
    height: 6
  - title: CPM Comparison
    name: CPM Comparison
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_bar
    fields: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid, impression_funnel_dv360.cpm]
    filters:
      cluster_predict.centroid_id: NOT NULL
    sorts: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid]
    limit: 500
    dynamic_fields: [{table_calculation: 'yes', label: 'Yes', expression: 'if(${cluster_predict.is_selected_centroid},${impression_funnel_dv360.cpm},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: 'no', label: 'No', expression: 'if(NOT ${cluster_predict.is_selected_centroid},${impression_funnel_dv360.cpm},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: No - impression_funnel_dv360.cpc,
            id: No - impression_funnel_dv360.cpc, name: 'No'}, {axisId: Yes - impression_funnel_dv360.cpc,
            id: Yes - impression_funnel_dv360.cpc, name: 'Yes'}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      Yes - impression_funnel_dv360.cpc: "#34A853"
      No - impression_funnel_dv360.cpm: "#4285F4"
      Yes - impression_funnel_dv360.cpm: "#34A853"
      'yes': "#34A853"
      'no': "#4285F4"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [impression_funnel_dv360.cpm, cluster_predict.is_selected_centroid]
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_input
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 3
    col: 16
    width: 8
    height: 6
  - title: Total Conversions Comparison
    name: Total Conversions Comparison
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    type: looker_bar
    fields: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid, impression_funnel_dv360.total_conversions]
    filters:
      cluster_predict.centroid_id: NOT NULL
    sorts: [cluster_predict.centroid_id, cluster_predict.is_selected_centroid]
    limit: 500
    dynamic_fields: [{table_calculation: 'yes', label: 'Yes', expression: 'if(${cluster_predict.is_selected_centroid},${impression_funnel_dv360.total_conversions},null)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: 'no', label: 'No', expression: 'if(NOT
          ${cluster_predict.is_selected_centroid},${impression_funnel_dv360.total_conversions},null)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: No - impression_funnel_dv360.cpc,
            id: No - impression_funnel_dv360.cpc, name: 'No'}, {axisId: Yes - impression_funnel_dv360.cpc,
            id: Yes - impression_funnel_dv360.cpc, name: 'Yes'}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      Yes - impression_funnel_dv360.cpc: "#34A853"
      Yes - impression_funnel_dv360.dbm_revenue: "#34A853"
      No - impression_funnel_dv360.total_impressions: "#4285F4"
      Yes - impression_funnel_dv360.total_impressions: "#34A853"
      Yes - impression_funnel_dv360.total_conversions: "#34A853"
      'yes': "#34A853"
      'no': "#4285F4"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [cluster_predict.is_selected_centroid, impression_funnel_dv360.total_conversions]
    listen:
      Impression Date: impression_funnel_dv360.impression_date
      Centroid ID: cluster_predict.centroid_input
      Performance Metric: impression_funnel_dv360.metric_selector
    row: 9
    col: 16
    width: 8
    height: 6
  filters:
  - name: Performance Metric
    title: Performance Metric
    type: field_filter
    default_value: Cost Per 1000 Impressions
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - Cost Per Acquisition
      - Cost Per Click
      - Click Through Rate
      - Cost Per 1000 Impressions
      - Conversion Rate
      - Viewable Impression Rate
      - Measureable Impression Rate
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    listens_to_filters: []
    field: impression_funnel_dv360.metric_selector
  - name: Impression Date
    title: Impression Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    listens_to_filters: []
    field: impression_funnel_dv360.impression_date
  - name: Centroid ID
    title: Centroid ID
    type: field_filter
    default_value: '1'
    allow_multiple_values: true
    required: false
    model: campaign_manager_dv360_marketplace
    explore: impression_funnel_dv360
    listens_to_filters: []
    field: cluster_predict.centroid_id
