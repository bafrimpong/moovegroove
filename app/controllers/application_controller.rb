class ApplicationController < ActionController::Base
    helper_method :godwin, :who_is_godwin

    def who_is_godwin
        puts "Godwin is a student"
    end

    def godwin  
       "He is a student"
    end
end
