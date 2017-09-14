ActiveAdmin.register Rent do
  permit_params :to, :from, :user_id, :book_id
end
