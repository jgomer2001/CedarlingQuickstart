@id("user_can_execute")
permit (
  principal,
  action == Jans::Action::"Execute",
  resource is Jans::Application
) when {
  context has tokens.jans_userinfo_token
};