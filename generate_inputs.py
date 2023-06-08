import os

inputs = [
    {"name": "input1", "default": "default_value1"},
    {"name": "input2", "default": "default_value2"},
    {"name": "input3", "default": "default_value3"},
    {"name": "input4", "default": "default_value4"},
    {"name": "input5", "default": "default_value5"},
    {"name": "input6", "default": "default_value6"},
    {"name": "input7", "default": "default_value7"},
    {"name": "input8", "default": "default_value8"},
    {"name": "input9", "default": "default_value9"},
    {"name": "input10", "default": "default_value10"},
    {"name": "input11", "default": "default_value11"},
    {"name": "input12", "default": "default_value12"},
    {"name": "input13", "default": "default_value13"},
    {"name": "input14", "default": "default_value14"},
    {"name": "input15", "default": "default_value15"},
    {"name": "input16", "default": "default_value16"},
    {"name": "input17", "default": "default_value17"},
    {"name": "input18", "default": "default_value18"},
    {"name": "input19", "default": "default_value19"},
    {"name": "input20", "default": "default_value20"},
    {"name": "input21", "default": "default_value21"},
    {"name": "input22", "default": "default_value22"},
    {"name": "input23", "default": "default_value23"},
    {"name": "input24", "default": "default_value24"},
    {"name": "input25", "default": "default_value25"},
    {"name": "input26", "default": "default_value26"},
    {"name": "input27", "default": "default_value27"},
    {"name": "input28", "default": "default_value28"},
    {"name": "input29", "default": "default_value29"},
    {"name": "input30", "default": "default_value30"},
    {"name": "input31", "default": "default_value31"},
    {"name": "input32", "default": "default_value32"},
    {"name": "input33", "default": "default_value33"},
    {"name": "input34", "default": "default_value34"},
    {"name": "input35", "default": "default_value35"},
    {"name": "input36", "default": "default_value36"},
    {"name": "input37", "default": "default_value37"},
    {"name": "input38", "default": "default_value38"},
]

for input_item in inputs:
    input_value = input(f"Enter a value for '{input_item['name']}' (default: {input_item['default']}): ")
    if input_value.strip() == "":
        # Use the default value if no input is provided
        input_value = input_item["default"]
    command = f'echo "::set-input name={input_item["name"]}::{input_value}"'
    os.system(command)
