class PrescriptionPdf < Prawn::Document
    def initialize(visit)
        super(top_margin: 70)
        @visit = visit
        date
        name
        line_items
        signed
        
        
    end
    
    
    
        def date
            
            text " #{@visit.visitdate}"
        end
        
        def name
        text "From the office of doctor: #{@visit.visitdoctor}", size: 15, style: :bold
        end
        
        def line_items
            move_down 50
            text "Requires the prescription of: #{@visit.visitprescription}"
        end
        
        
        def signed
            move_down 220
            text "Signed: _____________________"
        end
        

end