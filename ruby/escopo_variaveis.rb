####### Local ######
# def foo
#     puts local = "Variavel local"
# end

# foo
# puts local -> retorna erro

####### Global ######

#class Bar
#    def foo
#        $global = 0
#        puts $global
#    end
#end

#class Baz
#    def qux
#        $global += 1
#        puts $global
#    end
#end

#bar = Bar.new
#baz = Baz.new
#bar.foo
#baz.qux
#puts $global

####### Variaveis de classe ######
#class User
#    @@user_count = 0
#    def add(name)
#        puts "User #{name} adicionado"
#        @@user_count += 1
#        puts @@user_count
#    end
#end

#first_user = User.new
#first_user.add("Mario")

#second_user = User.new
#second_user.add("Joao")

#third_user = User.new
#third_user.add("Jose")


####### Variaveis de Instancia ######
class User
    def add(name)
        @name = name
        puts "User adicionado"
        hello
    end

    def hello
        puts "Seja bem vindo, #{@name}"
    end
end

first_user = User.new
first_user.add("Mario")
second_user = User.new
second_user.add("João")