json.array!(@test_guide_basics) do |test_guide_basic|
  json.extract! test_guide_basic, :id, :name, :test_id, :test_type_id, :order, :message, :simple_question_id, :group_question_references
  json.url test_guide_basic_url(test_guide_basic, format: :json)
end
