@id("user_can_compare")
permit (
  principal,
  action == Jans::Action::"Compare",
  resource is Jans::Application
) when {
  context has tokens.jans_userinfo_token
};