class ListPdf < Prawn::Document
    def initialize(user)
        super(top_margin: 70)
        @user = user
        user_data
        line_items
       
        
    end

    def user_data
        text "Hola #{@user.name} con email: #{@user.email}, estas son tus listas:"
        text " "
    end

    def line_items
        move_down 20
        table line_list_rows
    end
    
    def line_list_rows
        [["Titulo", "Descripcion"]] + 
        @user.todo_lists.map do |list|
            [list.title, list.description]
        end
    end

end