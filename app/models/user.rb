class User < ApplicationRecord
    validates:name,{presence:true}
    validates:email,{presence:true,uniqueness:true}
    has_secure_password
    #validates:password,{presence:true} not requires as method has_secure_password is used
    
    def posts
        return Post.where(user_id: self.id)
    end
end
