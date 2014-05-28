class User < ActiveRecord::Base


	def self.draw_bar_chart
		data_table = GoogleVisualr::DataTable.new
		data_table.new_column('string', 'name')
		data_table.new_column('number', 'mssg_count')
		data_table.add_rows(all.length)
		all.each_with_index do |element,index|
			data_table.set_cell(index, 0, element.name)
			data_table.set_cell(index, 1, element.msg_count)

		end
		opts   = { :width => 400, :height => 240, :title => 'BigData', vAxis: {title: 'Name', titleTextStyle: {color: 'red'}} }
		@chart = GoogleVisualr::Interactive::BarChart.new(data_table, opts)

	end	

end
