class GithubRepo

  attr_reader :name, :url

  def initialize(hash)
    @name = hash["name"]
    @url = hash["html_url"]
  end

  def authenticate_user(github_client)
    redirect_to "https://github.com/login/oauth/authorize?client_id=#{github_client]}&scope=repo"
  end

  def logged_in?(token)
    !!token
  end

end