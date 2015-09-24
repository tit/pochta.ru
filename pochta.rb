# encoding: utf-8

require 'unirest'

module Pochta
	def self.get_track_info track

		response = Unirest.post 'https://pochta.ru/mails-provider/v1/actions/addList', parameters: {
			barcodeList: track,
			hid: 0,
			locale: 'ru',
			postmanAllowed: true
		}

		response.body

	end
end
