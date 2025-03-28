require './_plugins/jekyll-topic-filter'

module Jekyll
  module Generators
    ##
    # This class generates the GTN's Tag Pages
    class TagPageGenerator < Generator
      safe true

      ##
      # This generates the author pages
      # Params
      # +site+:: The site object
      def generate(site)
        if Jekyll.env == 'production'
          _generate(site)
        end
      end

      def _generate(site)
        Jekyll.logger.info '[GTN/SyntheticTopics] Generating By-Tag Indexes'
        Gtn::TopicFilter.list_all_tags(site).map do |tag|
          site.data["by_tag_#{tag}"] = {
            'name' => "by_tag_#{tag}",
            'type' => 'use',
            'title' => tag,
            'summary' => "Tutorials covering #{tag}",
            'tag_based' => true,
            'hidden' => true,
          }

          topic_index = PageWithoutAFile.new(site, '', "tags/#{Jekyll::Utils.slugify(tag)}", 'index.md')
          topic_index.content = ''
          topic_index.data['layout'] = 'topic'
          topic_index.data['topic_name'] = "by_tag_#{tag}"
          topic_index.data['topic'] = site.data["by_tag_#{tag}"]

          site.pages << topic_index
        end

        Jekyll.logger.info '[GTN/SyntheticTopics] Generating By-Tag Embeds'
        Gtn::TopicFilter.list_all_tags(site).map do |tag|
          topic_index = PageWithoutAFile.new(site, '', "tags/#{Jekyll::Utils.slugify(tag)}", 'embed.html')
          topic_index.content = ''
          topic_index.data['layout'] = 'topic-embed'
          topic_index.data['topic_name'] = "by_tag_#{tag}"
          topic_index.data['topic'] = site.data["by_tag_#{tag}"]

          site.pages << topic_index
        end
      end
    end
  end
end
