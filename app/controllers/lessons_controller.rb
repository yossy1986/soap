class LessonsController < ApplicationController
    def index
        @lessons = Lesson.all
    end
    
    def show
        @lesson = Lesson.find_by(id: params[:id])
    end
    
    def new
        @lesson = Lesson.new
    end
    
    def create
        @lesson = Lesson.new(title: params[:title],
                            subtitle: params[:subtitle],
                            content: params[:content],
                            price: params[:price],
                            image: params[:image])
        if @lesson.save
            redirect_to("/lessons/#{@lesson.id}")
        else
            render("lessons/new")
        end
    end
    
    def edit
        @lesson = Lesson.find_by(id: params[:id])
    end
    
    def update
        @lesson = Lesson.find_by(id: params[:id])
        @lesson.title = params[:title]
        @lesson.subtitle = params[:subtitle]
        @lesson.content = params[:content]
        @lesson.price = params[:price]
        @lesson.image = params[:image]
        if @lesson.save
            redirect_to("/lessons/#{@lesson}")
        else
            render("lessons/#{@lesson}")
        end
    end
    
    def destroy
        @lesson = Lesson.find_by(id: params[:id])
        @lesson.destroy
        redirect_to("/lessons")
    end
end
