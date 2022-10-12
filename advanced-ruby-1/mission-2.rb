module Person
    class Juridic
        def initialize(name, cnpj)
            @name = name
            @cnpj = cnpj
        end

        def add
            puts "Pessoa Jurídica adicionada"
            puts @name
            puts @cnpj
        end
    end

    class Physical
        def initialize(name, cpf)
            @name = name
            @cpf = cpf
        end

        def add
            puts "Pessoa Física adicionada"
            puts @name
            puts @cpf
        end
    end
end

Person::Juridic.new("Nome da empresa",'123.456').add

Person::Physical.new("Nome da pessoa",'123.456').add