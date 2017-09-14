ActiveAdmin.register Book do
  permit_params :genre, :title, :author, :iamge, :publisher, :year
end
