@id("user_cannot_execute_on_public_network")
forbid (
  principal,
  action == Jans::Action::"Execute",
  resource is Jans::Application
)
when {
  context has tokens.jans_userinfo_token &&
  context has network_type &&
  context.network_type == "public"
};