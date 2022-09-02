require 'nokogiri'

module ApplicationHelper


  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end

  #只取一段文字
  def get_content_a_little c
  	# c = simple_format c
  	content = Nokogiri::HTML(c.to_s)
  	return content.at_css("p").text.to_s[0..22]

  end

  def get_str content ,strNum=0
    strInput = ''
  if(!content.nil?)

    strInput=strip_tags(content.strip)
    strStart = strNum


    strNum=35 if(strNum.nil? || strNum == 0)

    strInput =strInput.to_s[0..strNum.to_i]
  #
  #   $StrInput = mb_substr($StrInput,$strStart,mb_strlen($StrInput));
  #   $iString = urlencode($StrInput);
  #   $lstrResult="";
  #   $istrLen = 0;
  #   $k = 0;
  #   do{
  #     $lstrChar = substr($iString, $k, 1);
  #     if($lstrChar == "%"){
  #             $ThisChr = hexdec(substr($iString, $k+1, 2));
  #                 if($ThisChr >= 128){
  #                   if($istrLen+3 < $strLen){
  #                       $lstrResult .= urldecode(substr($iString, $k, 9));
  #                       $k = $k + 9;
  #                       $istrLen+=3;
  #                     }else{
  #                       $k = $k + 9;
  #                       $istrLen+=3;
  #                     }
  #                 }else{
  #                   $lstrResult .= urldecode(substr($iString, $k, 3));
  #                   $k = $k + 3;
  #                   $istrLen+=2;
  #                 }
  #         }else{
  #           $lstrResult .= urldecode(substr($iString, $k, 1));
  #           $k = $k + 1;
  #           $istrLen++;
  #         }
  #     }while ($k < strlen($iString) && $istrLen < $strLen);
  #     return $lstrResult;
  #
  #
  #     }else{
  #       return  false;
    end
    return strInput
  end

  def title(page_title)
    content_for(:title) { page_title }
  end

  def al(notice)
    str = "<script >alert('#{notice}')</script>"
  end



end
