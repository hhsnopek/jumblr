fs = require 'fs'
path = require 'path'
chai = require 'chai'
jade = require 'jade'

_fixture = (file) ->
  @file = "test/fixtures/#{file}.jade"
  return jade.renderFile(@file, {})

_expected = (file) ->
  @file = "test/expected/#{file}.html"
  return fs.readFileSync(@file, 'utf-8').replace(/^\s+|\s+$/g, "")

describe 'jumblr', ->
  chai.should()

  it 'should render without a jade block', ->
    @fixture = _fixture('jumblr')
    @expected = _expected('jumblr')
    @fixture.should.equal(@expected)

  it 'should render with a jade block', ->
    @fixture = _fixture('jumblrBlock')
    @expected = _expected('jumblrBlock')
    @fixture.should.equal(@expected)

  it 'should render with nested usage', ->
    @fixture = _fixture('jumblrNested')
    @expected = _expected('jumblrNested')
    @fixture.should.equal(@expected)
