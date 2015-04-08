class MailDocumentsController < ApplicationController
  before_action :set_mail_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mail_documents = MailDocument.all
    respond_with(@mail_documents)
  end

  def show
    respond_with(@mail_document)
  end

  def new
    @mail_document = MailDocument.new
    respond_with(@mail_document)
  end

  def edit
  end

  def create
    @mail_document = MailDocument.new(mail_document_params)
    @mail_document.save
    respond_with(@mail_document)
  end

  def update
    @mail_document.update(mail_document_params)
    respond_with(@mail_document)
  end

  def destroy
    @mail_document.destroy
    respond_with(@mail_document)
  end

  private
    def set_mail_document
      @mail_document = MailDocument.find(params[:id])
    end

    def mail_document_params
      params.require(:mail_document).permit(:text, :video, :picture)
    end
end
