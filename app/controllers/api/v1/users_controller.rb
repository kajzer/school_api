class Api::V1::UsersController < Api::V1::BaseController
    before_action :set_user, only: [:show]
    
    def show
        
        if params[:access_token] == "abracadabra"
            render json: {
                user_id: @user.id,
                name: @user.name,
                last_name: @user.last_name,
                index_nr: @user.index_nr,
                marks: @user.marks,
                absence: @user.absence,
                avatar_url: @user.avatar_url,
                phone_nr: @user.phone_nr,
                favourite_programming_lang: @user.fav_prog,
                address: {
                    city: @user.addresses.first.city,
                    street_adress: @user.addresses.first.street_adress,
                    zip_code: @user.addresses.first.zip_code
                },
                education: {
                    university: @user.schools.first.university,
                    degree: @user.schools.first.degree,
                    campu: @user.schools.first.campus,
                    secondary_school: @user.schools.first.secondary_school
                }
            }, status: :ok
        else
            render json: { error: "Invalid Access Token"}, status: 422
        end
    end
    
    def index
        if params[:limit]
            @users = User.all.limit(params[:limit].to_i)
        else
            @users = User.all
        end
        
        if params[:access_token] == "abracadabra"
            render json: {
                users: @users.map { |user| user.attributes.merge(address: 
                                                                        {city: user.addresses.first.city,
                                                                         street_adress: user.addresses.first.street_adress,
                                                                         zip_code: user.addresses.first.zip_code}, 
                                                                 education: {
                                                                         university: user.schools.first.university,
                                                                         degree: user.schools.first.degree,
                                                                         campu: user.schools.first.campus,
                                                                         secondary_school: user.schools.first.secondary_school
                                                                    }) }
            }
        else
            render json: { error: "Invalid Access Token"}, status: 422
        end
    end
    
    private
    
        def set_user
            @user = User.find(params[:id])
        end
end