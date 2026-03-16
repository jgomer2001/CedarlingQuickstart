@id("user_cannot_write_from_restricted_country")
forbid (
  principal,
  action == Jans::Action::"Write",
  resource is Jans::SecretDocument
)
when {
  context has tokens.jans_userinfo_token &&
  context has geolocation &&
  context.geolocation.contains("restricted")
};