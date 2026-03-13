@id("user_cannot_read_if_compromised")
forbid (
  principal,
  action == Jans::Action::"Read",
  resource is Jans::SecretDocument
)
when {  
  context has tokens.jans_userinfo_token &&
  context has device_health &&
  context.device_health.contains("compromised")
};