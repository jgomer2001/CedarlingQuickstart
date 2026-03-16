@id("user_can_read_if_email_is_example")
permit (
  principal,
  action == Jans::Action::"Read",
  resource is Jans::SecretDocument
)
when {
  context has tokens.jans_id_token &&
  context.tokens.jans_id_token.hasTag("email") &&
  context.tokens.jans_id_token.getTag("email").contains("admin@example.com")
};