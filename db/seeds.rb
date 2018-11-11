# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "yuko",
            password: "1234")
Lesson.create(title: "ベーシックソープ(体験コース)",
              subtitle: "初めての方はこちらから!この講座では手作り石けんの基礎をしっかりお伝えします。",
              content: "初めての方はこちらから!この講座では手作り石けんの基礎をしっかりお伝えします。",
              price: "3500円")
Lesson.create(title: "宝石石けん",
              subtitle: "キラキラ輝くジュエリーのよう。。。3種類6個の石けんを作ります。。",
              content: "キラキラ輝くジュエリーのよう。。。3種類6個の石けんを作ります。。",
              price: "3500円")
Lesson.create(title: "ドッグソープ",
              subtitle: "初めての方はこちらから!この講座では手作り石けんの基礎をしっかりお伝えします。",
              content: "初めての方はこちらから!この講座では手作り石けんの基礎をしっかりお伝えします。",
              price: "3500円")
Lesson.create(title: "アロマスイーツボム",
              subtitle: "初めての方はこちらから!この講座では手作り石けんの基礎をしっかりお伝えします。",
              content: "初めての方はこちらから!この講座では手作り石けんの基礎をしっかりお伝えします。",
              price: "3500円")
