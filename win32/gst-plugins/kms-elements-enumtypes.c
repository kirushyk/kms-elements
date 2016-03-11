


#include "kms-elements-enumtypes.h"
#include "kmshttpendpointmethod.h"
#include "kmsencodingrules.h"

/* enumerations from "kmshttpendpointmethod.h" */
GType
kms_http_endpoint_method_get_type (void)
{
  static volatile gsize g_define_type_id__volatile = 0;
  if (g_once_init_enter (&g_define_type_id__volatile)) {
    static const GEnumValue values[] = {
      { KMS_HTTP_ENDPOINT_METHOD_GET, "KMS_HTTP_ENDPOINT_METHOD_GET", "get" },
      { KMS_HTTP_ENDPOINT_METHOD_POST, "KMS_HTTP_ENDPOINT_METHOD_POST", "post" },
      { KMS_HTTP_ENDPOINT_METHOD_UNDEFINED, "KMS_HTTP_ENDPOINT_METHOD_UNDEFINED", "undefined" },
      { 0, NULL, NULL }
    };
    GType g_define_type_id = g_enum_register_static ("KmsHttpEndpointMethod", values);
    g_once_init_leave (&g_define_type_id__volatile, g_define_type_id);
  }
  return g_define_type_id__volatile;
}

/* enumerations from "kmsencodingrules.h" */
GType
kms_encoding_rules_get_type (void)
{
  static volatile gsize g_define_type_id__volatile = 0;
  if (g_once_init_enter (&g_define_type_id__volatile)) {
    static const GEnumValue values[] = {
      { KMS_ENCODING_RULES_BER, "KMS_ENCODING_RULES_BER", "ber" },
      { KMS_ENCODING_RULES_XER, "KMS_ENCODING_RULES_XER", "xer" },
      { KMS_ENCODING_RULES_PER, "KMS_ENCODING_RULES_PER", "per" },
      { 0, NULL, NULL }
    };
    GType g_define_type_id = g_enum_register_static ("KmsEncodingRules", values);
    g_once_init_leave (&g_define_type_id__volatile, g_define_type_id);
  }
  return g_define_type_id__volatile;
}



