class Book < ActiveFedora::Base
  has_metadata 'descMetadata', type: BookMetadata
  has_many :pages, :property=> :is_part_of

  delegate :title, to: 'descMetadata', unique: false
  delegate :author, to: 'descMetadata', unique: false


end