

class LinksController < ApplicationController


	def index
	end

	def new
	@code = SecureRandom.urlsafe_base64(8)
	end

	def show
		id = params[:id]
		@link = Link.find(id)
	end

	def create
		new_link = params.require(:link).permit(:name, :url, :code, :views)
		@link = Link.create(new_link)
		redirect_to "/show/#{@link.id}"
	end

	def redirect
		code = params[:code]
		@link = Link.find_by_code(code)
		puts @link.views
		redirect_to "http://#{@link.url}"
	end

	def preview
		code = params[:code]
		@link = Link.find_by_code(code)
		# agent = Mechanize.new
		# page = agent.get("#{@link.url}")
		# @page_content = agent.page.content
	end

	def all
		@links = Link.all
	end
end

