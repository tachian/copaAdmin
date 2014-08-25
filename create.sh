rails g scaffold Team name:string
rails g scaffold Member name:string email:string team:references
rails g scaffold SimpleQuestion name:text media:string
rails g scaffold SimpleQuestionAlternative name:text media:string correct:boolean simple_question:references
rails g scaffold GroupQuestion name:string
rails g scaffold GroupQuestionStatement name:string group_question:references
rails g scaffold GroupQuestionAlternative name:string correct:boolean group_question_statement:references
rails g scaffold Company name:string
rails g scaffold Test name:string company:references duration:integer
rails g scaffold TestType name:string
rails g scaffold TestGuideBasic name:string test:references test_type:references order:integer message:text simple_question:references group_question_references
