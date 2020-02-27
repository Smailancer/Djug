class Tweet < ApplicationRecord
    include PublicActivity::Model 

    acts_as_votable
    acts_as_commentable

    belongs_to :user 

    validates_presence_of :content 
    validates_length_of :content, maximum: 140
   

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
