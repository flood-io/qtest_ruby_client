# SwaggerClient::FieldResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**instance_type** | **String** | Number Data Type | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] 
**id** | **Integer** | ID of the Field Setting | [optional] 
**label** | **String** | Label of the Field Setting | 
**required** | **BOOLEAN** | Is required or not | [optional] [default to false]
**constrained** | **BOOLEAN** | Constrained or not | [optional] [default to false]
**order** | **Integer** | Display order | [optional] 
**allowed_values** | [**Array&lt;AllowedValueResource&gt;**](AllowedValueResource.md) | Allowed values | [optional] 
**multiple** | **BOOLEAN** | Is allowed multiple value | [optional] [default to false]
**data_type** | **Integer** | Data type of the Field Setting | [optional] 
**searchable** | **BOOLEAN** | Allowed full text search or not | [optional] [default to false]
**default_value** | **String** | Default value of the Field Setting | [optional] 
**system_field** | **BOOLEAN** | Is system field or not | [optional] [default to false]
**original_name** | **String** | Original name of the Field Setting | [optional] 
**is_active** | **BOOLEAN** | Is active or disabled | [optional] [default to false]


