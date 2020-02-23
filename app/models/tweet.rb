class Tweet < ApplicationRecord
    include PublicActivity::Model 

    belongs_to :user 

    validates_presence_of :content 

    FORMAT = AutoHtml::Pipeline.new(
        AutoHtml::HtmlEscape.new,
        AutoHtml::Link.new(target: '_blank', rel: 'nofollow'),
        AutoHtml::SimpleFormat.new
    )

    def content=(c)
        super(c)
        self[:content_html] = FORMAT.call(c)
    end

end
