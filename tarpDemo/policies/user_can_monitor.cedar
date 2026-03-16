@id("user_can_monitor")
permit (
  principal,
  action == Jans::Action::"Monitor",
  resource is Jans::Application
) when {
  context has tokens.jans_userinfo_token
};