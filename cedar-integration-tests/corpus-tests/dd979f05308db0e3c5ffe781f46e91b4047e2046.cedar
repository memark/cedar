permit(
  principal == a::"\0",
  action in [Action::""],
  resource
) when {
  true && [[!a::"\0", a::"2"], principal]
};
