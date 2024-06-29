permit(
  principal == a::"\0",
  action in [Action::""],
  resource
) when {
  true && [[context, false == principal], principal]
};
