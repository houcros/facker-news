class SubmitValidator < ActiveModel::Validator
    def validate(record)
    	return true if ((record.submit_type == "new" and record.url) or (record.submit_type == "question" and !record.url))
    end
end