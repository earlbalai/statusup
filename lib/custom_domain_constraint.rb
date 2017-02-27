class CustomDomainConstraint
  def self.matches? request
    request.subdomain.present? && matching_service?(request)
  end

  def self.matching_service? request
    Page.where(:custom_domain => request.host).any?
  end
end