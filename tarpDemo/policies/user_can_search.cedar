@id("user_can_search")
permit (
  principal,
  action == Jans::Action::"Search",
  resource is Jans::Application
) when {
  context has tokens.jans_userinfo_token
};