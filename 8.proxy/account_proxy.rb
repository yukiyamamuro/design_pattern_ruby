require 'etc'
require './8.proxy/account'

class AccountProxy
  def initialize(real_object, owner_name)
    @subject = real_object
    @owner_name = owner_name
  end

  # メソッドが存在しないときに呼ばれるメソッド
  # さらに存在しなければObjectクラスの同メソッドが呼ばれる
  def method_missing(name, *args)
    check_access
    @subject.send(name, *args)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account"
    end
  end
end

ap = AccountProxy.new(Account.new(100), 'yamamuro')
p ap.balance