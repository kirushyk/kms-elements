


#include "kms-webrtc-enumtypes.h"
#include "kmswebrtcdatachannelstate.h"
#include "kmswebrtcdatachannelpriority.h"

/* enumerations from "kmswebrtcdatachannelstate.h" */
GType
kms_web_rtc_data_channel_state_get_type (void)
{
  static volatile gsize g_define_type_id__volatile = 0;
  if (g_once_init_enter (&g_define_type_id__volatile)) {
    static const GEnumValue values[] = {
      { KMS_WEB_RTC_DATA_CHANNEL_STATE_CONNECTING, "KMS_WEB_RTC_DATA_CHANNEL_STATE_CONNECTING", "connecting" },
      { KMS_WEB_RTC_DATA_CHANNEL_STATE_OPEN, "KMS_WEB_RTC_DATA_CHANNEL_STATE_OPEN", "open" },
      { KMS_WEB_RTC_DATA_CHANNEL_STATE_CLOSING, "KMS_WEB_RTC_DATA_CHANNEL_STATE_CLOSING", "closing" },
      { KMS_WEB_RTC_DATA_CHANNEL_STATE_CLOSED, "KMS_WEB_RTC_DATA_CHANNEL_STATE_CLOSED", "closed" },
      { 0, NULL, NULL }
    };
    GType g_define_type_id = g_enum_register_static ("KmsWebRtcDataChannelState", values);
    g_once_init_leave (&g_define_type_id__volatile, g_define_type_id);
  }
  return g_define_type_id__volatile;
}

/* enumerations from "kmswebrtcdatachannelpriority.h" */
GType
kms_web_rtc_data_channel_priority_get_type (void)
{
  static volatile gsize g_define_type_id__volatile = 0;
  if (g_once_init_enter (&g_define_type_id__volatile)) {
    static const GEnumValue values[] = {
      { KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_IGNORED, "KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_IGNORED", "ignored" },
      { KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_BELOW_NORMAL, "KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_BELOW_NORMAL", "below-normal" },
      { KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_NORMAL, "KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_NORMAL", "normal" },
      { KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_HIGH, "KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_HIGH", "high" },
      { KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_EXTRA_HIGH, "KMS_WEB_RTC_DATA_CHANNEL_PRIORITY_EXTRA_HIGH", "extra-high" },
      { 0, NULL, NULL }
    };
    GType g_define_type_id = g_enum_register_static ("KmsWebRtcDataChannelPriority", values);
    g_once_init_leave (&g_define_type_id__volatile, g_define_type_id);
  }
  return g_define_type_id__volatile;
}



