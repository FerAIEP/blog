# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "eliminando articulos..."
# Article.destroy_all
puts "creando articulos..."
articles = Article.create([
  {title: "Primer articulo del viernes", text: "este es el texto del día viernes"},
  {title: "Segundo articulo del viernes", text: "este es el texto del día viernes"},
  {title: "Tercero articulo del viernes", text: "este es el texto del día viernes"}
])
puts "articulos creados exitosamente..."
puts "creando comentarios..."
Comment.create(commenter: "Este es un comentario nuevo", body: "body del comentario", article: articles.first)
puts "comentarios creados"