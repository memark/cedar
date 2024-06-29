permit(
  principal,
  action,
  resource
) when {
  true && (a::"Ǵ" == ((a::"\0\0\0\0" == principal) == principal))
};
