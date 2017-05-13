# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create! :email => 'admin@admin.com', :password => '123456789', :password_confirmation => 'asdfasdf'
temperatura = Temperatura.create([  {valor: 90}, {valor: 91}, {valor: 92}, {valor: 93}, {valor: 94}, {valor: 95}, {valor: 96}, {valor: 97}, {valor: 98}, {valor: 99},
                                    {valor: 100}, {valor: 101}, {valor: 102}, {valor: 103}, {valor: 104}, {valor: 105}, {valor: 106}, {valor: 107}, {valor: 108}, {valor: 109},
                                    {valor: 110}, {valor: 111}, {valor: 112}, {valor: 113}, {valor: 114}, {valor: 115}, {valor: 116}, {valor: 117}, {valor: 118}, {valor: 119},
                                    {valor: 120}, {valor: 121}, {valor: 122}, {valor: 123}, {valor: 124}, {valor: 125}, {valor: 126}, {valor: 127}, {valor: 128}, {valor: 129},
                                    {valor: 130}, {valor: 131}, {valor: 132}, {valor: 133}, {valor: 134}, {valor: 135}, {valor: 136}, {valor: 137}, {valor: 138}, {valor: 139},
                                    {valor: 140}, {valor: 141}, {valor: 142}, {valor: 143}, {valor: 144}, {valor: 145}, {valor: 146}, {valor: 147}, {valor: 148}, {valor: 149},
                                    {valor: 150}, {valor: 151}, {valor: 152}, {valor: 153}, {valor: 154}, {valor: 155}, {valor: 156}, {valor: 157}, {valor: 158}, {valor: 159},
                                    {valor: 160}, {valor: 161}, {valor: 162}, {valor: 163}, {valor: 164}, {valor: 165}, {valor: 166}, {valor: 167}, {valor: 168}, {valor: 169},
                                    {valor: 170}, {valor: 171}, {valor: 172}, {valor: 173}, {valor: 174}, {valor: 175}, {valor: 176}, {valor: 177}, {valor: 178}, {valor: 179},
                                    {valor: 180}, {valor: 181}, {valor: 182}, {valor: 183}, {valor: 184}, {valor: 185}, {valor: 186}, {valor: 187}, {valor: 188}, {valor: 189},
                                    {valor: 190}, {valor: 191}, {valor: 192}, {valor: 193}, {valor: 194}, {valor: 195}, {valor: 196}, {valor: 197}, {valor: 198}, {valor: 199},
                                    ])