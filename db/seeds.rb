AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
[{
  name: 'Одяг та взуття'
},
 {
   name: 'Чоловічий одяг',
   category: 'Одяг та взуття'
 },
 {
   name: 'Чоловічі футболки та майки',
   category: 'Чоловічий одяг'
 }].each do |category_params|
  category_params[:category] = Category.find_by(name: category_params[:category]) if category_params[:category]
  Category.create!(category_params)
end

Product.create(
  name: "Футболка Поло Тактична Чорна Поліція 100% Pass Cool",
  category: Category.find_by(name: "Чоловічі футболки та майки"),
  price: 47000,
  present: true,
  description: "Футболка поло Cool Pass
                Колір - чорний
                Розміри від 42 по 60"
)
