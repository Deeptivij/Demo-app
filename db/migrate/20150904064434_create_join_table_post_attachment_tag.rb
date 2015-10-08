class CreateJoinTablePostAttachmentTag < ActiveRecord::Migration
  def change
    create_join_table :post_attachments, :tags do |t|
      t.index [:post_attachment_id, :tag_id]
      t.index [:tag_id, :post_attachment_id]
    end
  end
end
