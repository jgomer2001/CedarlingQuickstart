@id("user_can_read_if_confidential_role")
permit (
  principal,
  action == Jans::Action::"Read",
  resource is Jans::SecretDocument
)
when {
  context has tokens.jans_userinfo_token &&
  context.tokens.jans_userinfo_token.hasTag("role") &&
  context.tokens.jans_userinfo_token.getTag("role").contains("confidential")
};