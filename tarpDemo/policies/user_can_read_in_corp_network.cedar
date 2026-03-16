@id("user_can_read_in_corp_network")
permit (
  principal,
  action == Jans::Action::"Read",
  resource is Jans::SecretDocument
)
when {
  context has tokens.jans_userinfo_token &&
  context has network &&
  context.network == "corp"
};