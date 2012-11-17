
require 'json'
require 'open-uri'

def get_bupa_data

array =  JSON.parse(open("http://www.bupa.com.au/BupaProvider/fap.json?search=ancillary&pageSize=1000&page=1&suburbPostcode=Rundle%20Mall,%20SA,%205000&specialtyTypes=C&originalRadius=100").read)
hash = array[0]
    hash['providers'].each do |provider|
        puts provider['name']
        p = Provider.create!(:name => provider['name'])
        p.address1 = provider['address1']
        ['fax','firstName','glat','glong','orgName','orgSubType','orgType','phone','postCode','providerName','providerNumber','state','suburb','title'].each do |prov|
            p.update_attribute(prov.to_sym, provider[prov]) 
        end
        #p.update_attributes(provider.except(:address2, :address3, :branchInfo, :branchName, :brand, :contractType, :dataCode, :dementiaCare, :distance, :email, :externalEmail, :extraService, :gapCode, :gapCodeDescription, :gapTypeRank, :highCare, :hospitalGapType, :hospitalGapTypeDescription, :hospitalName, :hospitalType, :id, :initial1, :lowCare, :medicalSpecialty, :nmhiSpecCode1, :nmhiSpecCode2, :nmhiSpecCode3, :nmhiSpecCode4, :nmhiSpecCode5, :nmhiSpecCode6, :practiceId, :practitionerCode, :provFromDate, :provStatus, :provToDate, :specialtyCode1, :specialtyCode2, :specialtyCode3, :specialtyCode4, :specialtyCode5, :specialtyCode6, :specialtyType, :subType, :type, :utilRateCode, :utilRateDescription, :web))
        p.save!
    end
   
end

get_bupa_data

