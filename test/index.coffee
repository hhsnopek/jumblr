fs = require 'fs'
path = require 'path'
chai = require 'chai'
jade = require 'jade'

_fixture = (folder, file) ->
  @file = "test/fixtures/#{folder}/#{file}.jade"
  return jade.renderFile(@file, {})

_expected = (folder, file) ->
  @file = "test/expected/#{folder}/#{file}.html"
  return fs.readFileSync(@file, 'utf-8').replace(/^\s+|\s+$/g, "")

describe 'jumblr', ->
  chai.should()

  it 'should render without a jade empty', ->
    @fixture = _fixture('jumblr', 'empty')
    @expected = _expected('jumblr', 'empty')
    @fixture.should.equal(@expected)

  it 'should render with a jade block', ->
    @fixture = _fixture('jumblr', 'block')
    @expected = _expected('jumblr', 'block')
    @fixture.should.equal(@expected)

  it 'should render with nested usage', ->
    @fixture = _fixture('jumblr', 'nested')
    @expected = _expected('jumblr', 'nested')
    @fixture.should.equal(@expected)

describe 'jumblrStr', ->
  chai.should()

  it 'should render without any arguments', ->
    @fixture = _fixture('jumblrStr', 'empty')
    @expected = _expected('jumblrStr', 'empty')
    @fixture.should.equal(@expected)

  it 'should render with a single block', ->
    @fixture = _fixture('jumblrStr', 'single')
    @expected = _expected('jumblrStr', 'single')
    @fixture.should.equal(@expected)

  it 'should render with nested blocks', ->
    @fixture = _fixture('jumblrStr', 'block')
    @expected = _expected('jumblrStr', 'block')
    @fixture.should.equal(@expected)

  it 'should render with nested strings', ->
    @fixture = _fixture('jumblrStr', 'nested')
    @expected = _expected('jumblrStr', 'nested')
    @fixture.should.equal(@expected)

describe 'jumblrStrList', ->
  chai.should()

  it 'should render with empty object', ->
    @fixture = _fixture('jumblrStrList', 'empty')
    @expected = _expected('jumblrStrList', 'empty')
    @fixture.should.equal(@expected)

  it 'should render with a single key', ->
    @fixture = _fixture('jumblrStrList', 'single')
    @expected = _expected('jumblrStrList', 'single')
    @fixture.should.equal(@expected)

  it 'should render with multiple keys', ->
    @fixture = _fixture('jumblrStrList', 'multi')
    @expected = _expected('jumblrStrList', 'multi')
    @fixture.should.equal(@expected)
