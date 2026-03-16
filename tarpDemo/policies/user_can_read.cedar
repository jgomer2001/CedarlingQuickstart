@id("user_can_read")
permit (
  principal,
  action == Jans::Action::"Read",
  resource is Jans::Application
) when {
  context has tokens.jans_userinfo_token
};