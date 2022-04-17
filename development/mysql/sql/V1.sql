ALTER TABLE session ADD INDEX index_on_value(value);
ALTER TABLE user ADD UNIQUE INDEX index_on_user_id(user_id);
ALTER TABLE group_info ADD UNIQUE INDEX index_on_group_id(group_id);
ALTER TABLE group_member ADD INDEX index_on_user_id(user_id, is_primary);
ALTER TABLE record_last_access ADD INDEX index_on_id(user_id, record_id);
ALTER TABLE category ADD UNIQUE INDEX index_on_category_id(category_id);
ALTER TABLE category_group ADD INDEX index_on_group_id(group_id);
ALTER TABLE file ADD UNIQUE INDEX index_on_file_id(file_id);
ALTER TABLE record_item_file ADD INDEX index_on_lr_id(linked_record_id, item_id asc);
ALTER TABLE record_comment ADD INDEX index_on_lr_id2(linked_record_id, created_at desc);

ALTER TABLE record ADD UNIQUE INDEX index_on_record_id1(record_id);
ALTER TABLE record ADD INDEX index_on_status(status, category_id, application_group);
ALTER TABLE record ADD INDEX index_on_status2(status, updated_at desc, record_id asc);
ALTER TABLE record ADD INDEX index_on_created_by(created_by, status, updated_at desc, record_id asc);
