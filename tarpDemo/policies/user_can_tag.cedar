@id("user_can_tag")
permit (
  principal,
  action == Jans::Action::"Tag",
  resource is Jans::Application
) when {
  context has tokens.jans_userinfo_token
};