@id("security_admin_can_write_to_secretdocument")
permit (
  principal,
  action == Jans::Action::"Write",
  resource is Jans::SecretDocument
)
when {
  context has tokens.jans_userinfo_token &&
  context.tokens.jans_userinfo_token.hasTag("role") &&
  context.tokens.jans_userinfo_token.getTag("role").contains("security-admin")
};