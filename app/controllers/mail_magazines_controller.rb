class MailMagazinesController < ApplicationController
  before_action :set_mail_magazine, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mail_magazines = MailMagazine.all
    respond_with(@mail_magazines)
  end

  def show
    respond_with(@mail_magazine)
  end

  def new
    @mail_magazine = MailMagazine.new
    respond_with(@mail_magazine)
  end

  def edit
  end

  def create
    @mail_magazine = MailMagazine.new(mail_magazine_params)
    @mail_magazine.save
    respond_with(@mail_magazine)
  end

  def update
    @mail_magazine.update(mail_magazine_params)
    respond_with(@mail_magazine)
  end

  def destroy
    @mail_magazine.destroy
    respond_with(@mail_magazine)
  end

  def send_mail
    @users = User.send_mail_magazine
    @mail_documents = MailDocument.where('mail_magazine_id' == params[:id])
    PostMailer.enqueue.post_email(@users, @mail_documents).deliver
  end

  private
    def set_mail_magazine
      @mail_magazine = MailMagazine.find(params[:id])
    end

    def mail_magazine_params
      params.require(:mail_magazine).permit(:title)
    end
end
