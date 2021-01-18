class TodokedesController < ApplicationController
    # top-page
    def index
        
    end

    # 出生届
    def syusyou
        
    end

    def syusyou_1
        
    end

    def syusyou_2
        $chakusyutu = params[:answer].to_i
        if $chakusyutu == 2
           redirect_to "/syusyou/2/1"
        end
    end

    def syusyou_2_1
    
    end

    def syusyou_3
        
    end

    def syusyou_4
        
    end

    def syusyou_5
        if $chakusyutu == 2
           redirect_to "/syusyou/5/1"
        end
    end

    def syusyou_5_1
    
    end

    def syusyou_6
        if $chakusyutu == 2
           redirect_to "/syusyou/6/1"
        end
    end

    def syusyou_6_1
    
    end

    def syusyou_7
        if $chakusyutu == 2
           redirect_to "/syusyou/7/1"
        end
    end

    def syusyou_7_1
    
    end

    def syusyou_8
        if $chakusyutu == 2
           redirect_to "/syusyou/8/1"
        end
    end

    def syusyou_8_1
    
    end

    def syusyou_9
        if $chakusyutu == 2
           redirect_to "/syusyou/9/1"
        end
    end

    def syusyou_9_1
    
    end


    # 婚姻届
    def konin
        
    end

    # 離婚届
    def rikon
        
    end

    # 死亡届
    def shibou
        
    end

    # 転籍届
    def tenseki
        
    end

    # お問い合わせ
    def contact
        @contact = Contact.new
        render :action => "contact"
    end

    def confirm
        @contact = Contact.new(params[:contact].permit(:email, :message))
        if @contact.valid?
        render :action => "confirm"
        else
        render :action => "contact"
        end
    end

    def thanks
        # メール送信
        @contact = Contact.new(params[:contact].permit(:email, :message))    
        ContactMailer.received_email(@contact).deliver

        # 完了画面を表示
        render :action => 'thanks'
    end

end
