class SchikRV
  def smart_quotes(params)
    params.gsub(/"(.*?)"/,'«\1»')
  end
end
