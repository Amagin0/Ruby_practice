# 自動車の運転者に関するモジュールの作成
# Runと出力するメソッド
# Stopと出力するメソッド

module Driver
  def self.run
    puts 'Run'
  end

  def self.stop
    puts 'stop'
  end
end

Driver.run
Driver.stop

# driver = Driver.new
# 抽象クラスはインスタンス化できない

# module TaxiDriver < Driver
# end
# モジュールは継承できない
