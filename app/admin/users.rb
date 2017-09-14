ActiveAdmin.register User do
  permit_params :email, :password, :first_name, :last_name, :locale
end
