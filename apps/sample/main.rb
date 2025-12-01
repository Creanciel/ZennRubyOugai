require 'logger'
require 'json'
require 'ougai'

logger = Ougai::Logger.new(STDOUT)

logger.error('エラー')


begin
  JSON.parse('{')
rescue => e
  logger.error('An error occured', e);
end

begin
  raise StandardError.new('エラー')
rescue => e
  logger.error('An error occured', e, {
    name: 'rintaro',
    book: 'vita sexualis',
  })

  logger.error(
    'An error occured',
    e, name: 'rintaro',
    book: 'vita sexualis'
  )
end
