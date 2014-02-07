# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
EquiTurn.create([
	{
  	name: 'Bank of America Corporation',
  	symbol: 'BAC',
  	owned: true,
  	today: 45
  },
  {
  	name: 'Microsoft Corporation',
  	symbol: 'MSF',
  	owned: true,
  	today: 25
  },
  {
  	name: 'Cisco Systems, Inc.',
  	symbol: 'CSCO',
  	owned: true,
  	today: 10
	},
	{
  	name: 'Verizon Communications, Inc.'
  	symbol: 'VZ'
  	owned: true,
  	today: 22
	},
])