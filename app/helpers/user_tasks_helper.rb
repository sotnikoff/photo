module UserTasksHelper
  def md2html(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    raw(markdown.render(text))
  end
end
