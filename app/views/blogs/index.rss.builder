xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Core Reaction News"
    xml.description "Follow the events of the Core Reaction game as they unfold."
    xml.link blogs_url

    for blog in @blogs
      xml.item do
        xml.title blog.title
        xml.description blog.body
        xml.author blog.author
        xml.pubDate blog.created_at.to_s(:rfc822)
        xml.link blog_url(blog)
        xml.guid blog_url(blog)
      end
    end
  end
end
