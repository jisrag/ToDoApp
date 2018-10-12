class ItemPdf < Prawn::Document
    def initialize(list)
        super(top_margin: 70)
        @list = list
        list_data
        line_items
    end

    def list_data
        text "Lista:    #{@list.title}    Descripcion:   #{@list.description}   , estas son tus tareas:"
        text " Si esta en blanco aun no la completas jiji"
        text " "
    end
    
    def line_items
        move_down 20
        table line_list_rows
    end
    
    def line_list_rows
        [["Tarea", "Completa El: "]] + 
        @list.todo_items.map do |item|
            [item.content, item.completed_at.to_s]
        end
    end


end