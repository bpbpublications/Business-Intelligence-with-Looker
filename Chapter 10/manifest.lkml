project_name: "ecommerce_sample"

constant: num_format{
  value:"
  {% if value >= 1000000000 %}
  {{ prefix }}{{ value | times: 1.0 | divided_by: 1000000000 | round: 1 }}B{{ suffix }}
  {% elsif value >= 1000000 %}
  {{ prefix }}{{ value | times: 1.0 | divided_by: 1000000 | round: 1 }}M{{ suffix }}
  {% elsif value >= 1000 %}
  {{ prefix }}{{ value | times: 1.0 | divided_by: 1000 | round: 1 }}K{{ suffix }}
  {% else %}
  {{ prefix }}{{ value | round: 1 }}{{ suffix }}
  {% endif %}
  "
}
constant: short_number_value_format {
  value: "
  {% assign prefix = '' %}
  {% assign suffix = '' %}
  {% if value < 0 %}
  {% assign value = value | times: -1 %}
  {% assign prefix = '(' %}
  {% assign suffix = ')' %}
  {% endif %}@{num_format}
  "
}
constant: short_percent_value_format {
  value: "
  {% assign prefix = '' %}
  {% assign suffix = '%' %}
  {% if value < 0 %}
  {% assign value = value | times: -1 %}
  {% assign prefix = '(' %}
  {% assign suffix = ')%' %}
  {% endif %}@{num_format}
  "
}
constant: short_currency_value_format {
  value: "
  {% assign prefix = '$' %}
  {% assign suffix = '' %}
  {% if value < 0 %}
  {% assign value = value | times: -1 %}
  {% assign prefix = '$(' %}
  {% assign suffix = ')' %}
  {% endif %}@{num_format}
  "
}
