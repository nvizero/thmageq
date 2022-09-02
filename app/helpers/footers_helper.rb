module FootersHelper

  def select_check cate_id , post_cates
		flag = false
		if post_cates
			post_cates.each do |postcate|
				flag = true if postcate.cate_id.to_i == cate_id.to_i
			end
		end
		return " selected " if flag
	end

end
