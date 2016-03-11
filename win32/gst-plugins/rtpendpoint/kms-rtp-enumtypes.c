


#include "kms-rtp-enumtypes.h"
#include "kmsrtpsdescryptosuite.h"

/* enumerations from "kmsrtpsdescryptosuite.h" */
GType
kms_rtp_sdes_crypto_suite_get_type (void)
{
  static volatile gsize g_define_type_id__volatile = 0;
  if (g_once_init_enter (&g_define_type_id__volatile)) {
    static const GEnumValue values[] = {
      { KMS_RTP_SDES_CRYPTO_SUITE_AES_128_CM_HMAC_SHA1_32, "KMS_RTP_SDES_CRYPTO_SUITE_AES_128_CM_HMAC_SHA1_32", "aes-128-cm-hmac-sha1-32" },
      { KMS_RTP_SDES_CRYPTO_SUITE_AES_128_CM_HMAC_SHA1_80, "KMS_RTP_SDES_CRYPTO_SUITE_AES_128_CM_HMAC_SHA1_80", "aes-128-cm-hmac-sha1-80" },
      { KMS_RTP_SDES_CRYPTO_SUITE_AES_256_CM_HMAC_SHA1_32, "KMS_RTP_SDES_CRYPTO_SUITE_AES_256_CM_HMAC_SHA1_32", "aes-256-cm-hmac-sha1-32" },
      { KMS_RTP_SDES_CRYPTO_SUITE_AES_256_CM_HMAC_SHA1_80, "KMS_RTP_SDES_CRYPTO_SUITE_AES_256_CM_HMAC_SHA1_80", "aes-256-cm-hmac-sha1-80" },
      { KMS_RTP_SDES_CRYPTO_SUITE_NONE, "KMS_RTP_SDES_CRYPTO_SUITE_NONE", "none" },
      { 0, NULL, NULL }
    };
    GType g_define_type_id = g_enum_register_static ("KmsRtpSDESCryptoSuite", values);
    g_once_init_leave (&g_define_type_id__volatile, g_define_type_id);
  }
  return g_define_type_id__volatile;
}



