FactoryBot.define do
  factory :tartiflette, class: Recipe do
    rate { 5.0 }
    author_tip { "be cool" }
    budget { "bon marché" }
    prep_time { "20min" }
    name { "Tartiflette" }
    author { "Le Tartifletteur" }
    difficulty { "facile" }
    people_quantity { 4 }
    cook_time { "20min" }
    total_time { "40min" }
  end

  factory :tartiflette2, class: Recipe do
    rate { 5.0 }
    author_tip { "be cool" }
    budget { "bon marché" }
    prep_time { "20min" }
    name { "Tartiflette" }
    author { "John McLane" }
    difficulty { "facile" }
    people_quantity { 4 }
    cook_time { "20min" }
    total_time { "40min" }
  end

  factory :raclette, class: Recipe do
    rate { 5.0 }
    author_tip { "be cool" }
    budget { "cher" }
    prep_time { "20min" }
    name { "Raclette" }
    author { "Le Tartifletteur" }
    difficulty { "facile" }
    people_quantity { 4 }
    cook_time { "20min" }
    total_time { "40min" }
  end

  factory :fondue, class: Recipe do
    rate { 5.0 }
    author_tip { "be cool" }
    budget { "bon marché" }
    prep_time { "20min" }
    name { "Fondue" }
    author { "Le Tartifletteur" }
    difficulty { "difficile" }
    people_quantity { 4 }
    cook_time { "20min" }
    total_time { "40min" }
  end

  factory :ingredient do
    name { "potato" }
  end
end
