module Sufia::Forms
  class CollectionForm < CurationConcerns::Forms::CollectionEditForm
    self.required_fields = [:title]

    # Fields that are required for Collections
    def primary_terms
      required_fields
    end

    def rendered_terms
      [:creator,
       :contributor,
       :description,
       :keyword,
       :rights,
       :publisher,
       :date_created,
       :subject,
       :language,
       :identifier,
       :based_near,
       :related_url,
       :resource_type]
    end
  end
end
