class Artist < ApplicationRecord
  has_attached_file :avatar, styles: { large: "800x800>", medium: "300x300>", thumb: "100x100>" }
  do_not_validate_attachment_file_type :avatar
end
