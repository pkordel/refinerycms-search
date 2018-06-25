class CreateSearchPage < ActiveRecord::Migration[4.2]
  def up; end

  def down
    if defined?(Refinery::UserPlugin)
      Refinery::UserPlugin.destroy_all(name: 'refinerycms_search')
    end

    Refinery::Page.delete_all(link_url: '/search') if defined?(Refinery::Page)
  end
end
