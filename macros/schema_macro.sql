{% macro generate_schema_name(custom_schema_name, node) %}
    {% if target.name == 'dev' %}
        {{ 'dev_schema' }}
    {% elif target.name == 'prod' %}
        {{ 'prod_schema' }}
    {% else %}
        {{ custom_schema_name or target.schema }}
    {% endif %}
{% endmacro %}