require 'search_result_data'

class Search

  def self.all(criteria, repositories)
    criteria[:page] = 1 if not criteria.has_key?(:page)

    search_data = JSONModel::HTTP::get_json("/search", criteria)
    search_data[:criteria] = criteria

    SearchResultData.new(search_data, repositories)
  end

  def self.repo(repo_id, criteria, repositories)
    criteria[:page] = 1 if not criteria.has_key?(:page)

    search_data = JSONModel::HTTP::get_json("/repositories/#{repo_id}/search", criteria)
    search_data[:criteria] = criteria

    SearchResultData.new(search_data, repositories)
  end

end