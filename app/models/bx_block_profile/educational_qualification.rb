module BxBlockProfile
  class EducationalQualification < BxBlockProfile::ApplicationRecord
    self.table_name = :educational_qualifications
    belongs_to :profile, class_name: "BxBlockProfile::Profile"
    has_many :degree_educational_qualifications, class_name: "BxBlockProfile::DegreeEducationalQualification"
    has_many :educational_qualification_field_studys, class_name: "BxBlockProfile::EducationalQualificationFieldStudy"
  end
end