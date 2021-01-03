class SimpleLogger
  attr_accessor :level

  ERROR = 1
  WARNING = 2
  INFO = 3

  def initialize
    @log = File.open('./10.singleton/log.txt', 'w')
    @level = WARNING
  end

  def error(msg)
    @log.puts(msg)
    @log.flush
  end

  def warning(msg)
    @log.puts(msg) if @level >= WARNING
    @log.flush
  end

  def info(msg)
    @log.puts(msg) if @level >= INFO
    @log.flush
  end

  @@instance = SimpleLogger.new

  def self.instance
    return @@instance
  end

  private_class_method :new
end

logger = SimpleLogger.instance
logger.level = SimpleLogger::INFO

logger.info('first')
logger.info('second')

logger_2 = SimpleLogger.instance
logger_2.level = SimpleLogger::INFO

logger_2.info('fst')
logger_2.info('sec')
