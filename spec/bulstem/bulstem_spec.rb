# encoding: UTF-8

require 'spec_helper'
require 'bulstem'

describe "BulStem" do

    it "should stem words correctly with LOW stemming level" do
      stemmer = BulStem.new BulStem::Level::LOW
      {
        'първи' => 'първ',
        'случай' => 'случ',
        'българия' => 'българ',
        'здравеопазването' => 'здравеопазван',
        'точната' => 'точ',
        'продължителен' => 'продължител',
        'здравна' => 'здрав',
        'известен' => 'изв'
      }.each do |key, value|
        stemmer.stem(key).should eq value
      end
    end

    it "should stem words correctly with MEDIUM stemming level" do
      stemmer = BulStem.new BulStem::Level::MEDIUM
      {
        'първи' => 'първ',
        'случай' => 'случа',
        'българия' => 'българ',
        'здравеопазването' => 'здравеопазван',
        'точната' => 'точ',
        'продължителен' => 'продължител',
        'здравна' => 'здрав',
        'известен' => 'извест'
      }.each do |key, value|
        stemmer.stem(key).should eq value
      end
    end

    it "should stem words correctly with HIGH stemming level" do
      stemmer = BulStem.new BulStem::Level::HIGH
      {
        'първи' => 'първ',
        'случай' => 'случа',
        'българия' => 'българи',
        'здравеопазването' => 'здравеопазван',
        'точната' => 'точ',
        'продължителен' => 'продължител',
        'здравна' => 'здрав',
        'известен' => 'извест'
      }.each do |key, value|
        stemmer.stem(key).should eq value
      end
    end

end