class Letter < ActiveRecord::Base
  
  belongs_to :user  

  after_initialize :retrieve_lob_record

  protected

  def retrieve_lob_record
    @lob = Lob.load(api_key: Rails.application.secrets.lob_api_key)
  end

end
