# class ReportPdf < Prawn::Document
# 	def initialize(receipts)
# 		super()
# 		@reciepts = @search
# 		reciept_id
# 	end

# 	def reciept_id
# 		table reciept_id_all do
#            row(0).font_style = :bold
#            column(1..3).align = :right
#            self.row_colors = ["DDDDDD", "FFFFFF"]
#            self.header = true
#         end
#     end

#     def reciept_id_all
#     	[["Reciept_No.", "Name", "Address", "Contact No.", "Date", "Reciept Type", "Payment Mode", "Receiver", "Amount"]]
#     	@reciepts.map do |reciept|
#     		[reciept.id, reciept.name, reciept.address, reciept.contact, reciept.date, reciept.reciept_type, reciept.payment_mode, reciept.reciever, reciept.amount]
#     	end
#     end

# end