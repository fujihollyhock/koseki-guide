Rails.application.routes.draw do
  # top
  root to:"todokedes#index"

  # 出生届
  get "/syusyou", to:"todokedes#syusyou"
  get "/syusyou/1", to:"todokedes#syusyou_1"
  post "/syusyou/2", to:"todokedes#syusyou_2"
  get "/syusyou/2", to:"todokedes#syusyou_2"
  get "/syusyou/2/1", to:"todokedes#syusyou_2_1"
  get "/syusyou/3", to:"todokedes#syusyou_3"
  get "/syusyou/4", to:"todokedes#syusyou_4"
  get "/syusyou/5", to:"todokedes#syusyou_5"
  get "/syusyou/5/1", to:"todokedes#syusyou_5_1"
  get "/syusyou/6", to:"todokedes#syusyou_6"
  get "/syusyou/6/1", to:"todokedes#syusyou_6_1"
  get "/syusyou/7", to:"todokedes#syusyou_7"
  get "/syusyou/7/1", to:"todokedes#syusyou_7_1"
  get "/syusyou/8", to:"todokedes#syusyou_8"
  get "/syusyou/8/1", to:"todokedes#syusyou_8_1"
  get "/syusyou/9", to:"todokedes#syusyou_9"
  get "/syusyou/9/1", to:"todokedes#syusyou_9_1"

  # 婚姻届
  get "/konin", to:"todokedes#konin"

  # 離婚届
  get "/rikon", to:"todokedes#rikon"

  # 死亡届
  get "/shibou", to:"todokedes#shibou"

  # 転籍届
  get "/tenseki", to:"todokedes#tenseki"

  # お問い合わせ
  get "contact", to:"todokedes#contact"
  post "contact/confirm", to:"todokedes#confirm"
  get "contact/confirm", to:"todokedes#contact"
  post "contact/thanks", to:"todokedes#thanks"
  get "contact/thanks", to:"todokedes#thanks"
end
