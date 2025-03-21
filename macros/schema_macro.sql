{% macro get_schema_macro(model_name) %}
    {% if model_name in ["t_final_orders"] %} 'CALL_CENTER'
    {% else %} 'DBT_VIGGNESHWARA'
    {% endif %}
{% endmacro %}
