require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "télécharger vidéo" do
    visit project_path(@project)

    click_on "#{@project.videofile}.mp4"
    sleep(80)
    assert File.exists?( File.expand_path "~/Downloads/#{@project.videofile}.mp4" )
  end

  test "télécharger le final report" do
    visit project_path(@project)

    click_on "#{@project.videofile}_final.pdf"
    sleep(4)
    assert File.exists?( File.expand_path "~/Downloads/#{@project.videofile}_final.pdf" )
  end

  test "télécharger sous-titres anglais" do
    visit project_path(@project)

    click_on "English"
    sleep(4)
    assert File.exists?( File.expand_path "~/Downloads/#{@project.videofile}_EN.srt" )
  end

  test "télécharger sous-titres français" do
    visit project_path(@project)

    click_on "French"
    sleep(4)
    assert File.exists?( File.expand_path "~/Downloads/#{@project.videofile}_FR.srt" )
  end

  test "télécharger sous-titres allemands" do
    visit project_path(@project)

    click_on "Deutsch"
    sleep(4)
    assert File.exists?( File.expand_path "~/Downloads/#{@project.videofile}_DE.srt" )
  end

end



